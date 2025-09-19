<script setup>
import { reactive } from "vue";
import { Link, useForm } from "@inertiajs/vue3";
import AppLayout from "@/Layouts/AppLayout.vue";

const props = defineProps({
    letter_categories: Array,
    // filters: Object,
});

const form = useForm({
    search: props.filters?.search || "",
});

const searchLetters = () => {
    form.get(route("letter_categories.index"), {
        preserveState: true,
        replace: true,
    });
};

const { letter_categories } = props;
</script>
<template>
    <AppLayout title="Arsip Surat">
    <div class="p-6">
        <h1 class="text-2xl font-bold mb-4">Arsip Surat</h1>
        <p class="mb-4 text-gray-600">
            Berikut ini adalah kategori yang bisa digunakan untuk melabeli surat. 
            Klik <b>"Tambah"</b> pada kolom aksi untuk menambahkan kategori baru.
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
                    <th class="border px-2 py-1">ID Kategori</th>
                    <th class="border px-2 py-1">Nama Kategori</th>
                    <th class="border px-2 py-1">Keterangan</th>
                    <th class="border px-2 py-1">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="category in letter_categories" :key="category.id" class="hover:bg-gray-50">
                    <td class="border px-2 py-1">{{ category.id }}</td>
                    <td class="border px-2 py-1">{{ category.name }}</td>
                    <td class="border px-2 py-1">{{ category.description }}</td>
                    <td class="border px-2 py-1 space-x-2">
                        <button class="bg-red-500 text-white px-2 py-1 rounded" @click.prevent>
                        Hapus
                        </button>
                        <Link :href="route('letter_categories.edit', category.id)" class="bg-blue-500 text-white px-2 py-1 rounded">
                        Edit
                        </Link>
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- Add Button -->
        <div class="mt-4">
            <Link :href="route('letter_categories.create')" class="bg-green-600 text-white px-4 py-2 rounded">
            Tambah Kategori Baru..
            </Link>
        </div>
    </div>
    </AppLayout>
</template>

