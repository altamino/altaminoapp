package com.bytedance.tea.common.utility.c;

import android.annotation.TargetApi;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final b f914a = new c();

    interface b {
        void a(SharedPreferences.Editor editor);
    }

    /* JADX INFO: renamed from: com.bytedance.tea.common.utility.c.a$a, reason: collision with other inner class name */
    static class C0143a implements b {
        C0143a() {
        }

        @Override // com.bytedance.tea.common.utility.c.a.b
        public void a(SharedPreferences.Editor editor) {
            editor.commit();
        }
    }

    static class c implements b {
        c() {
        }

        @Override // com.bytedance.tea.common.utility.c.a.b
        @TargetApi(9)
        public void a(SharedPreferences.Editor editor) {
            editor.apply();
        }
    }

    public static void a(SharedPreferences.Editor editor) {
        if (editor == null) {
            return;
        }
        f914a.a(editor);
    }
}
