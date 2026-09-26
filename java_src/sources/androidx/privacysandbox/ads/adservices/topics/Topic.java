package androidx.privacysandbox.ads.adservices.topics;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class Topic {
    private final long modelVersion;
    private final long taxonomyVersion;
    private final int topicId;

    public final long a() {
        return this.modelVersion;
    }

    public final long b() {
        return this.taxonomyVersion;
    }

    public final int c() {
        return this.topicId;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Topic)) {
            return false;
        }
        Topic topic = (Topic) obj;
        return this.taxonomyVersion == topic.taxonomyVersion && this.modelVersion == topic.modelVersion && this.topicId == topic.topicId;
    }

    public int hashCode() {
        return (((i.a.a(this.taxonomyVersion) * 31) + i.a.a(this.modelVersion)) * 31) + this.topicId;
    }

    @NotNull
    public String toString() {
        return "Topic { " + ("TaxonomyVersion=" + this.taxonomyVersion + ", ModelVersion=" + this.modelVersion + ", TopicCode=" + this.topicId + " }");
    }

    public Topic(long j6, long j10, int i10) {
        this.taxonomyVersion = j6;
        this.modelVersion = j10;
        this.topicId = i10;
    }
}
