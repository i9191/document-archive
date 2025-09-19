<script setup>
import AppLayout from "@/Layouts/AppLayout.vue";
import { useForm, Link } from "@inertiajs/vue3";

const props = defineProps({
    letter_categories: Array,
});

const form = useForm({
    letter_number: "",
    letter_category_id: "",
    title: "",
    file: null,
});

const handleFileChange = (e) => {
    form.file = e.target.files[0];
};

const submit = () => {
    console.log(form);
    form.post(route("letters.store"), {
        forceFormData: true,
    });
};
</script>
<template>
    <AppLayout>
        <div class="p-6">
            <h1 class="text-2xl font-bold mb-2">Arsip Surat &gt;&gt; Unggah</h1>
            <p class="text-gray-600 mb-6">
                Unggah surat yang telah terbit pada form ini untuk diarsipkan.
                <br /> <b>Catatan:</b> Gunakan file berformat PDF.
            </p>

            <form @submit.prevent="submit" class="space-y-4">
                <!-- Nomor Surat -->
                <div>
                    <label class="block font-semibold mb-1">Nomor Surat</label>
                    <input v-model="form.letter_number" type="text" class="border rounded px-3 py-2 w-full" required />
                    <div v-if="form.errors.letter_number" class="text-red-500 text-sm">
                        {{ form.errors.letter_number }}
                    </div>
                </div>

                <!-- Kategori -->
                <div>
                    <label class="block font-semibold mb-1">Kategori</label>
                    <select v-model="form.letter_category_id" class="border rounded px-3 py-2 w-full" required>
                        <option value="">-- Pilih Kategori --</option>
                        <option v-for="category in letter_categories" :key="category.id" :value="category.id">
                            {{ category.name }}
                        </option>
                    </select>
                    <div v-if="form.errors.letter_category_id" class="text-red-500 text-sm">
                        {{ form.errors.letter_category_id }}
                    </div>
                </div>

                <!-- Judul -->
                <div>
                    <label class="block font-semibold mb-1">Judul</label>
                    <input v-model="form.title" type="text" class="border rounded px-3 py-2 w-full" required />
                    <div v-if="form.errors.title" class="text-red-500 text-sm">
                        {{ form.errors.title }}
                    </div>
                </div>

                <!-- File -->
                <div>
                    <label class="block font-semibold mb-1">File Surat (PDF)</label>
                    <input type="file" @change="handleFileChange" accept="application/pdf" class="block border rounded px-3 py-2 w-full" required />
                    <div v-if="form.errors.file" class="text-red-500 text-sm">
                        {{ form.errors.file }}
                    </div>
                </div>

                <!-- Buttons -->
                <div class="flex space-x-2 mt-6">
                    <Link :href="route('letters.index')"
                        class="px-4 py-2 bg-gray-400 text-white rounded hover:bg-gray-500">
                    &lt;&lt; Kembali
                    </Link>
                    <button type="submit" class="px-4 py-2 bg-green-600 text-white rounded hover:bg-green-700"
                        :disabled="form.processing">
                        Simpan
                    </button>
                </div>
            </form>
        </div>
    </AppLayout>
</template>
