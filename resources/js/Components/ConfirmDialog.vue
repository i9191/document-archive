<template>
    <div v-if="show" class="fixed inset-0 flex items-center justify-center bg-black/50 z-50">
        <div class="bg-white rounded-lg shadow-lg p-6 w-96">
            <h2 class="text-lg font-bold mb-4">{{ title }}</h2>
            <p class="mb-6">{{ message }}</p>

            <div class="flex justify-end space-x-2">
                <button @click="close" class="px-4 py-2 bg-gray-300 rounded hover:bg-gray-400">
                    Batal
                </button>
                <button @click="confirm" class="px-4 py-2 bg-red-600 text-white rounded hover:bg-red-700">
                    Hapus
                </button>
            </div>
        </div>
    </div>
</template>

<script setup>
const props = defineProps({
    show: Boolean,
    title: { type: String, default: "Konfirmasi" },
    message: { type: String, default: "Apakah Anda yakin?" },
});

const emit = defineEmits(["close", "confirm"]);

const close = () => emit("close");
const confirm = () => emit("confirm");
</script>
