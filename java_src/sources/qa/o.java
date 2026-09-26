package qa;

import java.util.Random;

/* JADX INFO: loaded from: classes9.dex */
public final class o {
    public static String a(String str, int i10, Random random) {
        StringBuilder sb = new StringBuilder(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            sb.append(str.charAt(random.nextInt(str.length())));
        }
        return sb.toString();
    }
}
