package com.narvii.master.launch;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public abstract class InstallType {

    public static final class FreshInstall extends InstallType {

        @NotNull
        public static final FreshInstall INSTANCE = new FreshInstall();

        private FreshInstall() {
            super(null);
        }
    }

    public static final class NormalLaunch extends InstallType {

        @NotNull
        public static final NormalLaunch INSTANCE = new NormalLaunch();

        private NormalLaunch() {
            super(null);
        }
    }

    public static final class Upgrade extends InstallType {
        private final int newVersion;
        private final int oldVersion;

        public Upgrade(int i10, int i11) {
            super(null);
            this.oldVersion = i10;
            this.newVersion = i11;
        }

        public static /* synthetic */ Upgrade copy$default(Upgrade upgrade, int i10, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                i10 = upgrade.oldVersion;
            }
            if ((i12 & 2) != 0) {
                i11 = upgrade.newVersion;
            }
            return upgrade.copy(i10, i11);
        }

        public final int component1() {
            return this.oldVersion;
        }

        public final int component2() {
            return this.newVersion;
        }

        @NotNull
        public final Upgrade copy(int i10, int i11) {
            return new Upgrade(i10, i11);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Upgrade)) {
                return false;
            }
            Upgrade upgrade = (Upgrade) obj;
            return this.oldVersion == upgrade.oldVersion && this.newVersion == upgrade.newVersion;
        }

        public final int getNewVersion() {
            return this.newVersion;
        }

        public final int getOldVersion() {
            return this.oldVersion;
        }

        public int hashCode() {
            return (this.oldVersion * 31) + this.newVersion;
        }

        @NotNull
        public String toString() {
            return "Upgrade(oldVersion=" + this.oldVersion + ", newVersion=" + this.newVersion + ")";
        }
    }

    public /* synthetic */ InstallType(k kVar) {
        this();
    }

    private InstallType() {
    }
}
