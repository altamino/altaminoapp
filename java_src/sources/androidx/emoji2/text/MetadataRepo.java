package androidx.emoji2.text;

import android.graphics.Typeface;
import android.util.SparseArray;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.os.TraceCompat;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.flatbuffer.MetadataList;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
@AnyThread
@RequiresApi
public final class MetadataRepo {
    private static final int DEFAULT_ROOT_SIZE = 1024;
    private static final String S_TRACE_CREATE_REPO = "EmojiCompat.MetadataRepo.create";

    @NonNull
    private final char[] mEmojiCharArray;

    @NonNull
    private final MetadataList mMetadataList;

    @NonNull
    private final Node mRootNode = new Node(1024);

    @NonNull
    private final Typeface mTypeface;

    @RestrictTo
    static class Node {
        private final SparseArray<Node> mChildren;
        private EmojiMetadata mData;

        private Node() {
            this(1);
        }

        final EmojiMetadata b() {
            return this.mData;
        }

        Node(int i10) {
            this.mChildren = new SparseArray<>(i10);
        }

        Node a(int i10) {
            SparseArray<Node> sparseArray = this.mChildren;
            if (sparseArray == null) {
                return null;
            }
            return sparseArray.get(i10);
        }

        void c(@NonNull EmojiMetadata emojiMetadata, int i10, int i11) {
            Node nodeA = a(emojiMetadata.b(i10));
            if (nodeA == null) {
                nodeA = new Node();
                this.mChildren.put(emojiMetadata.b(i10), nodeA);
            }
            if (i11 > i10) {
                nodeA.c(emojiMetadata, i10 + 1, i11);
            } else {
                nodeA.mData = emojiMetadata;
            }
        }
    }

    @NonNull
    @RestrictTo
    public char[] c() {
        return this.mEmojiCharArray;
    }

    @NonNull
    @RestrictTo
    public MetadataList d() {
        return this.mMetadataList;
    }

    @NonNull
    @RestrictTo
    Node f() {
        return this.mRootNode;
    }

    @NonNull
    @RestrictTo
    Typeface g() {
        return this.mTypeface;
    }

    @NonNull
    public static MetadataRepo b(@NonNull Typeface typeface, @NonNull ByteBuffer byteBuffer) throws IOException {
        try {
            TraceCompat.a(S_TRACE_CREATE_REPO);
            return new MetadataRepo(typeface, MetadataListReader.b(byteBuffer));
        } finally {
            TraceCompat.b();
        }
    }

    @RestrictTo
    int e() {
        return this.mMetadataList.m();
    }

    @RestrictTo
    @VisibleForTesting
    void h(@NonNull EmojiMetadata emojiMetadata) {
        Preconditions.j(emojiMetadata, "emoji metadata cannot be null");
        Preconditions.b(emojiMetadata.c() > 0, "invalid metadata codepoint length");
        this.mRootNode.c(emojiMetadata, 0, emojiMetadata.c() - 1);
    }

    private MetadataRepo(@NonNull Typeface typeface, @NonNull MetadataList metadataList) {
        this.mTypeface = typeface;
        this.mMetadataList = metadataList;
        this.mEmojiCharArray = new char[metadataList.l() * 2];
        a(metadataList);
    }

    private void a(MetadataList metadataList) {
        int iL = metadataList.l();
        for (int i10 = 0; i10 < iL; i10++) {
            EmojiMetadata emojiMetadata = new EmojiMetadata(this, i10);
            Character.toChars(emojiMetadata.f(), this.mEmojiCharArray, i10 * 2);
            h(emojiMetadata);
        }
    }
}
