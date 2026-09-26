package androidx.webkit;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class UserAgentMetadata {
    public static final int BITNESS_DEFAULT = 0;
    private final String mArchitecture;
    private int mBitness;
    private final List<BrandVersion> mBrandVersionList;
    private final String mFullVersion;
    private boolean mMobile;
    private final String mModel;
    private final String mPlatform;
    private final String mPlatformVersion;
    private boolean mWow64;

    public static final class BrandVersion {
        private final String mBrand;
        private final String mFullVersion;
        private final String mMajorVersion;

        public static final class Builder {
            private String mBrand;
            private String mFullVersion;
            private String mMajorVersion;

            public Builder() {
            }

            public Builder(@NonNull BrandVersion brandVersion) {
                this.mBrand = brandVersion.a();
                this.mMajorVersion = brandVersion.c();
                this.mFullVersion = brandVersion.b();
            }
        }

        @NonNull
        public String a() {
            return this.mBrand;
        }

        @NonNull
        public String b() {
            return this.mFullVersion;
        }

        @NonNull
        public String c() {
            return this.mMajorVersion;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BrandVersion)) {
                return false;
            }
            BrandVersion brandVersion = (BrandVersion) obj;
            return Objects.equals(this.mBrand, brandVersion.mBrand) && Objects.equals(this.mMajorVersion, brandVersion.mMajorVersion) && Objects.equals(this.mFullVersion, brandVersion.mFullVersion);
        }

        public int hashCode() {
            return Objects.hash(this.mBrand, this.mMajorVersion, this.mFullVersion);
        }

        @NonNull
        public String toString() {
            return this.mBrand + "," + this.mMajorVersion + "," + this.mFullVersion;
        }
    }

    @Nullable
    public String a() {
        return this.mArchitecture;
    }

    public int b() {
        return this.mBitness;
    }

    @NonNull
    public List<BrandVersion> c() {
        return this.mBrandVersionList;
    }

    @Nullable
    public String d() {
        return this.mFullVersion;
    }

    @Nullable
    public String e() {
        return this.mModel;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserAgentMetadata)) {
            return false;
        }
        UserAgentMetadata userAgentMetadata = (UserAgentMetadata) obj;
        return this.mMobile == userAgentMetadata.mMobile && this.mBitness == userAgentMetadata.mBitness && this.mWow64 == userAgentMetadata.mWow64 && Objects.equals(this.mBrandVersionList, userAgentMetadata.mBrandVersionList) && Objects.equals(this.mFullVersion, userAgentMetadata.mFullVersion) && Objects.equals(this.mPlatform, userAgentMetadata.mPlatform) && Objects.equals(this.mPlatformVersion, userAgentMetadata.mPlatformVersion) && Objects.equals(this.mArchitecture, userAgentMetadata.mArchitecture) && Objects.equals(this.mModel, userAgentMetadata.mModel);
    }

    @Nullable
    public String f() {
        return this.mPlatform;
    }

    @Nullable
    public String g() {
        return this.mPlatformVersion;
    }

    public boolean h() {
        return this.mMobile;
    }

    public boolean i() {
        return this.mWow64;
    }

    public static final class Builder {
        private String mArchitecture;
        private int mBitness;
        private List<BrandVersion> mBrandVersionList;
        private String mFullVersion;
        private boolean mMobile;
        private String mModel;
        private String mPlatform;
        private String mPlatformVersion;
        private boolean mWow64;

        public Builder() {
            this.mBrandVersionList = new ArrayList();
            this.mMobile = true;
            this.mBitness = 0;
            this.mWow64 = false;
        }

        public Builder(@NonNull UserAgentMetadata userAgentMetadata) {
            this.mBrandVersionList = new ArrayList();
            this.mMobile = true;
            this.mBitness = 0;
            this.mWow64 = false;
            this.mBrandVersionList = userAgentMetadata.c();
            this.mFullVersion = userAgentMetadata.d();
            this.mPlatform = userAgentMetadata.f();
            this.mPlatformVersion = userAgentMetadata.g();
            this.mArchitecture = userAgentMetadata.a();
            this.mModel = userAgentMetadata.e();
            this.mMobile = userAgentMetadata.h();
            this.mBitness = userAgentMetadata.b();
            this.mWow64 = userAgentMetadata.i();
        }
    }

    public int hashCode() {
        return Objects.hash(this.mBrandVersionList, this.mFullVersion, this.mPlatform, this.mPlatformVersion, this.mArchitecture, this.mModel, Boolean.valueOf(this.mMobile), Integer.valueOf(this.mBitness), Boolean.valueOf(this.mWow64));
    }
}
