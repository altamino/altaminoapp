package p6;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes10.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Set<String> f3332a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static com.bytedance.tea.common.utility.collection.a<InterfaceC0491a> f3333b = new com.bytedance.tea.common.utility.collection.a<>();

    /* JADX INFO: renamed from: p6.a$a, reason: collision with other inner class name */
    public interface InterfaceC0491a {
        String a();

        boolean b();
    }

    public static String a() {
        Set<String> set = f3332a;
        if (set != null && !set.isEmpty()) {
            try {
                StringBuilder sb = new StringBuilder();
                int i10 = 0;
                for (String str : f3332a) {
                    if (i10 < f3332a.size() - 1) {
                        sb.append(str);
                        sb.append("|");
                    } else {
                        sb.append(str);
                    }
                    i10++;
                }
                return sb.toString();
            } catch (Throwable unused) {
            }
        }
        return "";
    }

    public static String b() {
        com.bytedance.tea.common.utility.collection.a<InterfaceC0491a> aVar = f3333b;
        if (aVar != null && !aVar.a()) {
            try {
                StringBuilder sb = new StringBuilder();
                int i10 = 0;
                for (InterfaceC0491a interfaceC0491a : f3333b) {
                    if (interfaceC0491a != null && !f3332a.contains(interfaceC0491a.a()) && interfaceC0491a.b()) {
                        if (i10 < f3333b.b() - 1) {
                            sb.append(interfaceC0491a.a());
                            sb.append("|");
                        } else {
                            sb.append(interfaceC0491a.a());
                        }
                    }
                    i10++;
                }
                return sb.toString();
            } catch (Throwable unused) {
            }
        }
        return "";
    }
}
