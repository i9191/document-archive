<script setup>
import { toRefs } from "vue";
import { Link, useForm } from "@inertiajs/vue3";
import AppLayout from "@/Layouts/AppLayout.vue";

const props = defineProps({
    letters: Array,
    filters: Object,
});

const form = useForm({
    search: props.filters?.search || "",
});

const searchLetters = () => {
    form.get(route("letters.index"), {
        preserveState: true,
        replace: true,
    });
};

const { letters } = toRefs(props);
</script>
<template>
    <AppLayout title="Arsip Surat">
    <!-- Flash Success -->
    <div v-if="$page.props.flash?.success" class="mb-4 p-3 rounded bg-green-100 text-green-700 flex justify-between">
        {{ $page.props.flash.success }}
        <button @click="$page.props.flash.success = null" class="text-gray-500 hover:text-gray-800 ml-auto">
            x
        </button>
    </div>

    <!-- Flash Error -->
    <div v-if="$page.props.flash?.error" class="mb-4 p-3 rounded bg-red-100 text-red-700 flex justify-between">
        {{ $page.props.flash.error }}
        <button @click="$page.props.flash.error = null" class="text-gray-500 hover:text-gray-800 ml-auto">
            x
        </button>
    </div>

    <div class="p-6">
        <h1 class="text-2xl font-bold mb-4">Arsip Surat</h1>
        <p class="mb-4 text-gray-600">
            Berikut ini adalah surat-surat yang telah terbit dan diarsipkan.
            Klik <b>"Lihat"</b> pada kolom aksi untuk menampilkan surat.
        </p>

        <!-- Search -->
        <form @submit.prevent="searchLetters" class="flex mb-4">
            <input v-model="form.search" type="text" placeholder="Cari surat..."
                class="border rounded-l px-3 py-2 w-full" />
            <button class="bg-gray-700 text-white px-4 rounded-r">
                Cari!
            </button>
        </form>

        <!-- Table -->
        <table class="w-full border text-sm">
            <thead class="bg-gray-100">
                <tr>
                    <th class="border px-2 py-1">Nomor Surat</th>
                    <th class="border px-2 py-1">Kategori</th>
                    <th class="border px-2 py-1">Judul</th>
                    <th class="border px-2 py-1">Waktu Pengarsipan</th>
                    <th class="border px-2 py-1">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="letter in letters" :key="letter.id" class="hover:bg-gray-50">
                    <td class="border px-2 py-1">{{ letter.letter_number }}</td>
                    <td class="border px-2 py-1">{{ letter.letter_category?.name }}</td>
                    <td class="border px-2 py-1">{{ letter.title }}</td>
                    <td class="border px-2 py-1">
                        {{ new Date(letter.created_at).toLocaleString() }}
                    </td>
                    <td class="border px-2 py-1 space-x-2">
                        <Link :href="route('letters.destroy', letter.id)" method="delete" as="button"
                            class="bg-red-500 text-white px-2 py-1 rounded">
                        Hapus
                        </Link>
                        <a :href="route('letters.download', letter.id)" target="_blank"
                            class="bg-yellow-500 text-black px-2 py-1 rounded">
                            Unduh
                        </a>
                        <Link :href="route('letters.show', letter.id)"
                            class="bg-blue-500 text-white px-2 py-1 rounded">
                        Lihat
                        </Link>
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- Add Button -->
        <div class="mt-4">
            <Link :href="route('letters.create')" class="bg-green-600 text-white px-4 py-2 rounded">
            Arsipkan Surat..
            </Link>
        </div>
    </div>
    </AppLayout>
</template>

