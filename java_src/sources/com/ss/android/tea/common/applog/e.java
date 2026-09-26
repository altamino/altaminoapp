package com.ss.android.tea.common.applog;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    static class a implements n6.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f3127a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f3128b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f3129c;

        @Override // n6.a
        public int a() {
            return this.f3129c;
        }

        @Override // n6.a
        public String d() {
            return this.f3128b;
        }

        @Override // n6.a
        public String getAppName() {
            return this.f3127a;
        }

        a(String str, String str2, int i10) {
            this.f3127a = str;
            this.f3128b = str2;
            this.f3129c = i10;
        }
    }

    static void a(f fVar) {
        z.a(fVar, "TeaConfig");
        fVar.a();
        b(fVar.f());
        b.z0(fVar.e(), fVar.h(), new a(fVar.c(), fVar.d(), fVar.b()), fVar.g());
    }

    private static void b(c cVar) {
        if (cVar != null) {
            String strA = cVar.a();
            if (!TextUtils.isEmpty(strA)) {
                b.R0(strA);
            }
            b.Q0(cVar.b(), cVar.c());
        }
    }
}
