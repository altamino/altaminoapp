package b5;

/* JADX INFO: loaded from: classes7.dex */
final class a extends f {
    private final String libraryName;
    private final String version;

    @Override // b5.f
    public String b() {
        return this.libraryName;
    }

    @Override // b5.f
    public String c() {
        return this.version;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.libraryName.equals(fVar.b()) && this.version.equals(fVar.c());
    }

    public int hashCode() {
        return ((this.libraryName.hashCode() ^ 1000003) * 1000003) ^ this.version.hashCode();
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.libraryName + ", version=" + this.version + "}";
    }

    a(String str, String str2) {
        if (str != null) {
            this.libraryName = str;
            if (str2 != null) {
                this.version = str2;
                return;
            }
            throw new NullPointerException("Null version");
        }
        throw new NullPointerException("Null libraryName");
    }
}
