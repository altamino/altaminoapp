package org.a.b;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;

/* loaded from: classes4.dex */
public final class c {
    public final d a;
    public final b b;

    /* synthetic */ c(d dVar, byte b) {
        this(dVar);
    }

    private c(d dVar) {
        this.a = dVar;
        this.b = new b();
    }

    public static void a(CharSequence charSequence, List<org.a.b.a> list) {
        ArrayList arrayList = new ArrayList();
        for (org.a.b.a aVar : list) {
            int i = aVar.a;
            boolean z = true;
            if ((i == 0 || !Character.isAlphabetic(charSequence.charAt(i - 1))) && (aVar.b + 1 == charSequence.length() || !Character.isAlphabetic(charSequence.charAt(aVar.b + 1)))) {
                z = false;
            }
            if (z) {
                arrayList.add(aVar);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            list.remove((org.a.b.a) it.next());
        }
    }

    public static void b(CharSequence charSequence, List<org.a.b.a> list) {
        long length = charSequence.length();
        ArrayList arrayList = new ArrayList();
        for (org.a.b.a aVar : list) {
            int i = aVar.a;
            if (i == 0 || Character.isWhitespace(charSequence.charAt(i - 1))) {
                int i2 = aVar.b;
                if (i2 + 1 == length || Character.isWhitespace(charSequence.charAt(i2 + 1))) {
                }
            }
            arrayList.add(aVar);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            list.remove((org.a.b.a) it.next());
        }
    }

    public final void a() {
        LinkedBlockingDeque linkedBlockingDeque = new LinkedBlockingDeque();
        b bVar = this.b;
        for (b bVar2 : bVar.b.values()) {
            bVar2.c = bVar;
            linkedBlockingDeque.add(bVar2);
        }
        while (!linkedBlockingDeque.isEmpty()) {
            b bVar3 = (b) linkedBlockingDeque.remove();
            for (Character ch : bVar3.b.keySet()) {
                b bVarA = bVar3.a(ch, false);
                linkedBlockingDeque.add(bVarA);
                b bVar4 = bVar3.c;
                while (bVar4.a(ch, false) == null) {
                    bVar4 = bVar4.c;
                }
                b bVarA2 = bVar4.a(ch, false);
                bVarA.c = bVarA2;
                bVarA.a(bVarA2.a());
            }
        }
    }

    public static class a {
        public final d a;
        public final c b;

        public /* synthetic */ a(byte b) {
            this();
        }

        private a() {
            this.a = new d();
            this.b = new c(this.a, (byte) 0);
        }
    }

    public final void a(CharSequence charSequence, org.a.b.a.b bVar) {
        b bVarA = this.b;
        for (int i = 0; i < charSequence.length(); i++) {
            Character chValueOf = Character.valueOf(charSequence.charAt(i));
            if (this.a.d) {
                chValueOf = Character.valueOf(Character.toLowerCase(chValueOf.charValue()));
            }
            b bVar2 = bVarA;
            bVarA = bVarA.a(chValueOf, false);
            while (bVarA == null) {
                bVar2 = bVar2.c;
                bVarA = bVar2.a(chValueOf, false);
            }
            Collection<String> collectionA = bVarA.a();
            boolean z = true;
            if (collectionA == null || collectionA.isEmpty()) {
                z = false;
            } else {
                Iterator<String> it = collectionA.iterator();
                boolean z2 = false;
                while (true) {
                    if (!it.hasNext()) {
                        z = z2;
                        break;
                    }
                    String next = it.next();
                    bVar.a(new org.a.b.a((i - next.length()) + 1, i, next));
                    if (this.a.e) {
                        break;
                    } else {
                        z2 = true;
                    }
                }
            }
            if (z && this.a.e) {
                return;
            }
        }
    }
}
