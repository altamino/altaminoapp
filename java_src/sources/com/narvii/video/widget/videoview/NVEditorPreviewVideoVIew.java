package com.narvii.video.widget.videoview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.narvii.app.NVContext;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.services.IEditorPackFactory;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class NVEditorPreviewVideoVIew extends FrameLayout {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final AttributeSet attributes;
    private IPreviewPlayer player;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final IPreviewPlayer initPlayer(@NotNull NVEditorPreviewVideoVIew videoView, @NotNull NVContext nvContext) {
            t.j(videoView, "videoView");
            t.j(nvContext, "nvContext");
            IEditorPackFactory iEditorPackFactory = (IEditorPackFactory) nvContext.getService("editorPackFactory");
            Context context = videoView.getContext();
            t.i(context, "getContext(...)");
            IPreviewPlayer previewPlayer = iEditorPackFactory.getPreviewPlayer(context);
            videoView.bindPreviewPlayer(previewPlayer);
            return previewPlayer;
        }
    }

    @NotNull
    public final AttributeSet getAttributes() {
        return this.attributes;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NVEditorPreviewVideoVIew(@NotNull Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(context, "context");
        t.j(attributes, "attributes");
        this.attributes = attributes;
    }

    public final void bindPreviewPlayer(@NotNull IPreviewPlayer player) {
        t.j(player, "player");
        this.player = player;
        addView(player.getVideoView(), new FrameLayout.LayoutParams(-1, -1));
    }
}
