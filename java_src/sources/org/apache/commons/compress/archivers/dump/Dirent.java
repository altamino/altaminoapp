package org.apache.commons.compress.archivers.dump;

/* JADX INFO: loaded from: classes9.dex */
class Dirent {
    private final int ino;
    private final String name;
    private final int parentIno;
    private final int type;

    int getIno() {
        return this.ino;
    }

    String getName() {
        return this.name;
    }

    int getParentIno() {
        return this.parentIno;
    }

    int getType() {
        return this.type;
    }

    public String toString() {
        return String.format("[%d]: %s", Integer.valueOf(this.ino), this.name);
    }

    Dirent(int i10, int i11, int i12, String str) {
        this.ino = i10;
        this.parentIno = i11;
        this.type = i12;
        this.name = str;
    }
}
