<template>
    <div class="flex">
        <!-- Sidebar -->
        <Sidebar />

        <!-- Main Content -->
        <main class="flex-1 p-6">
            <slot />
        </main>
    </div>
</template>

<script setup>
import Sidebar from "@/Components/Layout/Sidebar.vue";
</script>
