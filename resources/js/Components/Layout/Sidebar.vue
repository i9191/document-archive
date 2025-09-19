<script setup>
import { Link } from "@inertiajs/vue3";
</script>
<template>
    <aside class="w-60 bg-gray-100 border-r h-auto min-h-screen p-4">
        <h2 class="text-lg font-bold mb-4">Menu</h2>
        <nav class="flex flex-col space-y-2">
            <Link :href="route('letters.index')" class="flex items-center space-x-2 px-3 py-2 rounded hover:bg-gray-200"
                :class="{ 'bg-gray-300 font-semibold': $page.url.startsWith('/letters') }">
            <span>📂</span>
            <span>Arsip Surat</span>
            </Link>

            <!-- <Link :href="route('categories.index')"
                class="flex items-center space-x-2 px-3 py-2 rounded hover:bg-gray-200"
                :class="{ 'bg-gray-300 font-semibold': $page.url.startsWith('/categories') }">
            <span>🏷️</span>
            <span>Kategori Surat</span>
            </Link>

            <Link :href="route('about')" class="flex items-center space-x-2 px-3 py-2 rounded hover:bg-gray-200"
                :class="{ 'bg-gray-300 font-semibold': $page.url.startsWith('/about') }">
            <span>ℹ️</span>
            <span>About</span>
            </Link> -->
        </nav>
    </aside>
</template>
