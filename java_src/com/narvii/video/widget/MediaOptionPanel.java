package com.narvii.video.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.mediaeditor.R;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MediaOptionPanel.kt */
/* loaded from: classes3.dex */
public final class MediaOptionPanel extends RelativeLayout {
    public static final int ACTION_TYPE_AUDIO_TRACK_EDIT = 3;
    public static final int ACTION_TYPE_AUDIO_TRIM = 2;
    public static final int ACTION_TYPE_VIDEO_SPEED = 5;
    public static final int ACTION_TYPE_VIDEO_SPLIT = 4;
    public static final int ACTION_TYPE_VIDEO_TRIM = 1;
    public static final Companion Companion = new Companion(null);
    private HashMap _$_findViewCache;
    private int actionType;
    private final AttributeSet attributes;
    private OptionSelectedListener optionSelectedListener;

    /* compiled from: MediaOptionPanel.kt */
    public interface OptionSelectedListener {

        /* compiled from: MediaOptionPanel.kt */
        public static final class DefaultImpls {
            public static void onAddMusicSelected(OptionSelectedListener optionSelectedListener) {
            }
        }

        void onAddMusicSelected();

        void onOptionCancel(int i);

        void onOptionDone(int i);
    }

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
    public MediaOptionPanel(Context context, AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
        this.attributes = attributes;
        LayoutInflater.from(context).inflate(R.layout.component_option_panel, (ViewGroup) this, true);
    }

    public final AttributeSet getAttributes() {
        return this.attributes;
    }

    /* compiled from: MediaOptionPanel.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ImageView imageView = (ImageView) _$_findCachedViewById(R.id.option_done);
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.widget.MediaOptionPanel.onFinishInflate.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OptionSelectedListener optionSelectedListener = MediaOptionPanel.this.optionSelectedListener;
                    if (optionSelectedListener != null) {
                        optionSelectedListener.onOptionDone(MediaOptionPanel.this.actionType);
                    }
                }
            });
        }
        ImageView imageView2 = (ImageView) _$_findCachedViewById(R.id.option_cancel);
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.widget.MediaOptionPanel.onFinishInflate.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OptionSelectedListener optionSelectedListener = MediaOptionPanel.this.optionSelectedListener;
                    if (optionSelectedListener != null) {
                        optionSelectedListener.onOptionCancel(MediaOptionPanel.this.actionType);
                    }
                }
            });
        }
        ImageView imageView3 = (ImageView) _$_findCachedViewById(R.id.option_add_music);
        if (imageView3 != null) {
            imageView3.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.widget.MediaOptionPanel.onFinishInflate.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OptionSelectedListener optionSelectedListener = MediaOptionPanel.this.optionSelectedListener;
                    if (optionSelectedListener != null) {
                        optionSelectedListener.onAddMusicSelected();
                    }
                }
            });
        }
    }

    public static /* synthetic */ void initComponent$default(MediaOptionPanel mediaOptionPanel, int i, String str, OptionSelectedListener optionSelectedListener, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = "";
        }
        mediaOptionPanel.initComponent(i, str, optionSelectedListener);
    }

    public final void initComponent(int i, String title, OptionSelectedListener listener) {
        Intrinsics.checkParameterIsNotNull(title, "title");
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        this.actionType = i;
        this.optionSelectedListener = listener;
        if (i == 3) {
            TextView textView = (TextView) _$_findCachedViewById(R.id.option_hint_text);
            if (textView != null) {
                textView.setVisibility(8);
            }
            ImageView imageView = (ImageView) _$_findCachedViewById(R.id.option_add_music);
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            ImageView imageView2 = (ImageView) _$_findCachedViewById(R.id.option_add_music);
            if (imageView2 != null) {
                imageView2.setEnabled(false);
            }
            ImageView imageView3 = (ImageView) _$_findCachedViewById(R.id.option_add_music);
            if (imageView3 != null) {
                imageView3.setImageLevel(1);
            }
        } else {
            TextView textView2 = (TextView) _$_findCachedViewById(R.id.option_hint_text);
            if (textView2 != null) {
                textView2.setVisibility(0);
            }
            ImageView imageView4 = (ImageView) _$_findCachedViewById(R.id.option_add_music);
            if (imageView4 != null) {
                imageView4.setVisibility(8);
            }
            TextView textView3 = (TextView) _$_findCachedViewById(R.id.option_hint_text);
            if (textView3 != null) {
                textView3.setText(title);
            }
        }
        ImageView imageView5 = (ImageView) _$_findCachedViewById(R.id.option_cancel);
        if (imageView5 != null) {
            imageView5.setImageLevel(i == 2 ? 2 : 1);
        }
    }

    public final void updateAddMusicOptionStatus(boolean z) {
        int i = this.actionType;
        if (i == 2 || i == 3) {
            ImageView imageView = (ImageView) _$_findCachedViewById(R.id.option_add_music);
            if (imageView != null) {
                imageView.setEnabled(z);
            }
            ImageView imageView2 = (ImageView) _$_findCachedViewById(R.id.option_add_music);
            if (imageView2 != null) {
                imageView2.setImageLevel(z ? 2 : 1);
            }
        }
    }
}
