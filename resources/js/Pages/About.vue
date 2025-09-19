<script setup>
import AppLayout from '@/Layouts/AppLayout.vue';
</script>

<template>
    <AppLayout title="About">
        <div class="p-6">
            <h1 class="text-2xl font-bold mb-6">About</h1>

            <div class="flex items-start gap-6">
                <div class="w-32 h-32">
                    <img :src="'/assets/profile.png'" alt="Profile" class="w-32 h-32 object-cover object-top rounded" />
                </div>
                <div>
                    <p><strong>Aplikasi ini dibuat oleh:</strong></p>
                    <p><span class="font-medium">Nama</span>: Ibnu Tsalis Assalam</p>
                    <p><span class="font-medium">Prodi</span>: D4 Sistem Informasi Bisnis</p>
                    <p><span class="font-medium">NIM</span>: 2141762073</p>
                    <p><span class="font-medium">Tanggal</span>: 19 September 2025</p>
                </div>
            </div>
        </div>
    </AppLayout>
</template>
