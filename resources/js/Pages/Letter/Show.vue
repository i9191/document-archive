<script setup>
import { Link } from "@inertiajs/vue3";
import AppLayout from "@/Layouts/AppLayout.vue";

const props = defineProps({
    letter: Object,
});
</script>

<template>
    <AppLayout title="Arsip Surat">
        <div class="p-6">
            <h1 class="text-2xl font-bold mb-4">Arsip Surat &gt;&gt; Lihat</h1>
            <div class="space-y-2 mb-6">
                <p><strong>Nomor:</strong> {{ letter.letter_number }}</p>
                <p><strong>Kategori:</strong> {{ letter.letter_category.name }}</p>
                <p><strong>Judul:</strong> {{ letter.title }}</p>
                <p><strong>Waktu Unggah:</strong> {{ new Date(letter.created_at).toLocaleString() }}</p>
            </div>

            <!-- PDF Preview -->
            <div class="border rounded mb-6">
                <iframe :src="route('letters.download', letter.id)" class="w-full h-[500px]"></iframe>
            </div>

            <div class="flex gap-4">
                <Link :href="route('letters.index')" class="px-4 py-2 bg-gray-500 text-white rounded hover:bg-gray-600">
                &lt;&lt; Kembali
                </Link>
                <a :href="route('letters.download', letter.id)" target="_blank"
                    class="px-4 py-2 bg-green-500 text-white rounded hover:bg-green-600">
                    Unduh
                </a>
                <!-- <Link :href="route('letters.edit', letter.id)"
                    class="px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600">
                Edit/Ganti File
                </Link> -->
            </div>
        </div>
    </AppLayout>
</template>
