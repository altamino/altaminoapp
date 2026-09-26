package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContracts;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class PickVisualMediaRequest {

    @NotNull
    private ActivityResultContracts.PickVisualMedia.VisualMediaType mediaType = ActivityResultContracts.PickVisualMedia.ImageAndVideo.INSTANCE;

    public static final class Builder {

        @NotNull
        private ActivityResultContracts.PickVisualMedia.VisualMediaType mediaType = ActivityResultContracts.PickVisualMedia.ImageAndVideo.INSTANCE;
    }

    @NotNull
    public final ActivityResultContracts.PickVisualMedia.VisualMediaType a() {
        return this.mediaType;
    }
}
