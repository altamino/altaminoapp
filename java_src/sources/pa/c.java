package pa;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes11.dex */
public class c {
    public static b a(String str, String str2) {
        String str3;
        if (str2 == null || str2.isEmpty()) {
            str3 = "";
        } else {
            str3 = "_" + str2;
        }
        try {
            return (b) Class.forName("org.schabi.newpipe.extractor.timeago.patterns." + (str + str3)).getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (IllegalAccessException e) {
            e = e;
            e.printStackTrace();
            return null;
        } catch (NoSuchMethodException e2) {
            e = e2;
            e.printStackTrace();
            return null;
        } catch (InvocationTargetException e6) {
            e = e6;
            e.printStackTrace();
            return null;
        }
    }
}
