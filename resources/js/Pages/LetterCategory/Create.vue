<script setup>
import { useForm, Link } from "@inertiajs/vue3";
import AppLayout from "@/Layouts/AppLayout.vue";

const props = defineProps({
    letter_category: {
        type: Object,
        default: null,
    },
    last_id: {
        type: Number,
        default: 0,
    },
});

const form = useForm({
    id: props.letter_category?.id || props.last_id + 1,
    name: props.letter_category?.name || "",
    description: props.letter_category?.description || "",
});

const submit = () => {
    if (props.letter_category) {
        form.put(route("letter_categories.update", props.letter_category.id));
    } else {
        form.post(route("letter_categories.store"));
    }
};
</script>

<template>
    <AppLayout title="Arsip Surat">
        <div class="p-6">
            <h1 class="text-2xl font-bold mb-4">
                Kategori Surat &gt;&gt; {{ props.letter_category ? "Edit" : "Tambah" }}
            </h1>

            <p class="mb-6 text-gray-600">
                Tambahkan atau edit data kategori. Jika sudah selesai, klik tombol
                "Simpan".
            </p>

            <form @submit.prevent="submit" class="space-y-4">
                <!-- ID Auto Increment -->
                <div>
                    <label class="block font-medium">ID (Auto Increment)</label>
                    <input type="text" v-model="form.id" class="border rounded w-full px-3 py-2 bg-gray-100" readonly />
                </div>

                <!-- Nama Kategori -->
                <div>
                    <label class="block font-medium">Nama Kategori</label>
                    <input type="text" v-model="form.name" class="border rounded w-full px-3 py-2" required />
                    <div v-if="form.errors.name" class="text-red-500 text-sm">
                        {{ form.errors.name }}
                    </div>
                </div>

                <!-- Deskripsi -->
                <div>
                    <label class="block font-medium">Keterangan</label>
                    <textarea v-model="form.description" rows="3" class="border rounded w-full px-3 py-2"></textarea>
                    <div v-if="form.errors.description" class="text-red-500 text-sm">
                        {{ form.errors.description }}
                    </div>
                </div>

                <!-- Buttons -->
                <div class="flex gap-4">
                    <Link :href="route('letter_categories.index')"
                        class="px-4 py-2 bg-gray-500 text-white rounded hover:bg-gray-600">
                    &lt;&lt; Kembali
                    </Link>
                    <button type="submit" class="px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600">
                        Simpan
                    </button>
                </div>
            </form>
        </div>
    </AppLayout>
</template>
