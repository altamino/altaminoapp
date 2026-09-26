package w9;

/* JADX INFO: loaded from: classes10.dex */
public class b {
    private String name;
    private String value;

    public b(String str, String str2) {
        this.name = str;
        this.value = str2;
    }

    private int a(String str) {
        if (str == null) {
            return 1;
        }
        return str.hashCode();
    }

    private boolean d(String str, String str2) {
        if (str == str2) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return str.equals(str2);
    }

    public String b() {
        return this.name;
    }

    public String c() {
        return this.value;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return bVar == this || (d(this.name, bVar.name) && d(this.value, bVar.value));
    }

    public int hashCode() {
        return a(this.name) + (a(this.value) * 31);
    }
}
