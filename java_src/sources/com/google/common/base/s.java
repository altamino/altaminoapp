package com.google.common.base;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class s {
    private final int limit;
    private final boolean omitEmptyStrings;
    private final c strategy;
    private final d trimmer;

    class a implements c {
        final /* synthetic */ d val$separatorMatcher;

        /* JADX INFO: renamed from: com.google.common.base.s$a$a, reason: collision with other inner class name */
        class C0217a extends b {
            @Override // com.google.common.base.s.b
            int e(int i10) {
                return i10 + 1;
            }

            C0217a(s sVar, CharSequence charSequence) {
                super(sVar, charSequence);
            }

            @Override // com.google.common.base.s.b
            int f(int i10) {
                return a.this.val$separatorMatcher.c(this.toSplit, i10);
            }
        }

        a(d dVar) {
            this.val$separatorMatcher = dVar;
        }

        @Override // com.google.common.base.s.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public b a(s sVar, CharSequence charSequence) {
            return new C0217a(sVar, charSequence);
        }
    }

    private static abstract class b extends com.google.common.base.b<String> {
        int limit;
        int offset = 0;
        final boolean omitEmptyStrings;
        final CharSequence toSplit;
        final d trimmer;

        abstract int e(int i10);

        abstract int f(int i10);

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public String a() {
            int i10 = this.offset;
            while (true) {
                int i11 = this.offset;
                if (i11 == -1) {
                    return b();
                }
                int iF = f(i11);
                if (iF == -1) {
                    iF = this.toSplit.length();
                    this.offset = -1;
                } else {
                    this.offset = e(iF);
                }
                int i12 = this.offset;
                if (i12 == i10) {
                    int i13 = i12 + 1;
                    this.offset = i13;
                    if (i13 > this.toSplit.length()) {
                        this.offset = -1;
                    }
                } else {
                    while (i10 < iF && this.trimmer.e(this.toSplit.charAt(i10))) {
                        i10++;
                    }
                    while (iF > i10 && this.trimmer.e(this.toSplit.charAt(iF - 1))) {
                        iF--;
                    }
                    if (!this.omitEmptyStrings || i10 != iF) {
                        int i14 = this.limit;
                        if (i14 == 1) {
                            iF = this.toSplit.length();
                            this.offset = -1;
                            while (iF > i10 && this.trimmer.e(this.toSplit.charAt(iF - 1))) {
                                iF--;
                            }
                        } else {
                            this.limit = i14 - 1;
                        }
                        return this.toSplit.subSequence(i10, iF).toString();
                    }
                    i10 = this.offset;
                }
            }
        }

        protected b(s sVar, CharSequence charSequence) {
            this.trimmer = sVar.trimmer;
            this.omitEmptyStrings = sVar.omitEmptyStrings;
            this.limit = sVar.limit;
            this.toSplit = charSequence;
        }
    }

    private interface c {
        Iterator<String> a(s sVar, CharSequence charSequence);
    }

    private s(c cVar) {
        this(cVar, false, d.f(), Integer.MAX_VALUE);
    }

    private s(c cVar, boolean z6, d dVar, int i10) {
        this.strategy = cVar;
        this.omitEmptyStrings = z6;
        this.trimmer = dVar;
        this.limit = i10;
    }

    private Iterator<String> g(CharSequence charSequence) {
        return this.strategy.a(this, charSequence);
    }

    public static s d(char c7) {
        return e(d.d(c7));
    }

    public static s e(d dVar) {
        o.k(dVar);
        return new s(new a(dVar));
    }

    public List<String> f(CharSequence charSequence) {
        o.k(charSequence);
        Iterator<String> itG = g(charSequence);
        ArrayList arrayList = new ArrayList();
        while (itG.hasNext()) {
            arrayList.add(itG.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
