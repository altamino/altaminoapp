package com.narvii.video.widget.videoview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.app.NVContext;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.services.IEditorPackFactory;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NVEditorPreviewVideoVIew.kt */
/* loaded from: classes3.dex */
public final class NVEditorPreviewVideoVIew extends FrameLayout {
    public static final Companion Companion = new Companion(null);
    private HashMap _$_findViewCache;
    private final AttributeSet attributes;
    private IPreviewPlayer player;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NVEditorPreviewVideoVIew(Context context, AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
        this.attributes = attributes;
    }

    public final AttributeSet getAttributes() {
        return this.attributes;
    }

    /* compiled from: NVEditorPreviewVideoVIew.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final IPreviewPlayer initPlayer(NVEditorPreviewVideoVIew videoView, NVContext nvContext) {
            Intrinsics.checkParameterIsNotNull(videoView, "videoView");
            Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
            IEditorPackFactory iEditorPackFactory = (IEditorPackFactory) nvContext.getService("editorPackFactory");
            Context context = videoView.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "videoView.context");
            IPreviewPlayer previewPlayer = iEditorPackFactory.getPreviewPlayer(context);
            videoView.bindPreviewPlayer(previewPlayer);
            return previewPlayer;
        }
    }

    public final void bindPreviewPlayer(IPreviewPlayer player) {
        Intrinsics.checkParameterIsNotNull(player, "player");
        this.player = player;
        addView(player.getVideoView(), new FrameLayout.LayoutParams(-1, -1));
    }
}
