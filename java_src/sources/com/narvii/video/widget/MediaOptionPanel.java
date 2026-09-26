package com.narvii.video.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.IntRange;
import com.narvii.mediaeditor.databinding.ComponentOptionPanelBinding;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class MediaOptionPanel extends RelativeLayout {
    public static final int ACTION_TYPE_AUDIO_TRACK_EDIT = 3;
    public static final int ACTION_TYPE_AUDIO_TRIM = 2;
    public static final int ACTION_TYPE_VIDEO_SPEED = 5;
    public static final int ACTION_TYPE_VIDEO_SPLIT = 4;
    public static final int ACTION_TYPE_VIDEO_TRIM = 1;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private int actionType;

    @NotNull
    private final AttributeSet attributes;

    @NotNull
    private final ComponentOptionPanelBinding binding;

    @Nullable
    private OptionSelectedListener optionSelectedListener;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public interface OptionSelectedListener {

        public static final class DefaultImpls {
            public static void onAddMusicSelected(@NotNull OptionSelectedListener optionSelectedListener) {
            }
        }

        void onAddMusicSelected();

        void onOptionCancel(int i10);

        void onOptionDone(int i10);
    }

    @NotNull
    public final AttributeSet getAttributes() {
        return this.attributes;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaOptionPanel(@NotNull Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(context, "context");
        t.j(attributes, "attributes");
        this.attributes = attributes;
        ComponentOptionPanelBinding componentOptionPanelBindingInflate = ComponentOptionPanelBinding.inflate(LayoutInflater.from(context), this);
        t.i(componentOptionPanelBindingInflate, "inflate(...)");
        this.binding = componentOptionPanelBindingInflate;
    }

    public static /* synthetic */ void initComponent$default(MediaOptionPanel mediaOptionPanel, int i10, String str, OptionSelectedListener optionSelectedListener, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = "";
        }
        mediaOptionPanel.initComponent(i10, str, optionSelectedListener);
    }

    public final void updateAddMusicOptionStatus(boolean z6) {
        int i10 = this.actionType;
        if (i10 == 2 || i10 == 3) {
            this.binding.optionAddMusic.setEnabled(z6);
            this.binding.optionAddMusic.setImageLevel(z6 ? 2 : 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFinishInflate$lambda$0(MediaOptionPanel this$0, View view) {
        t.j(this$0, "this$0");
        OptionSelectedListener optionSelectedListener = this$0.optionSelectedListener;
        if (optionSelectedListener != null) {
            optionSelectedListener.onOptionDone(this$0.actionType);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFinishInflate$lambda$1(MediaOptionPanel this$0, View view) {
        t.j(this$0, "this$0");
        OptionSelectedListener optionSelectedListener = this$0.optionSelectedListener;
        if (optionSelectedListener != null) {
            optionSelectedListener.onOptionCancel(this$0.actionType);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFinishInflate$lambda$2(MediaOptionPanel this$0, View view) {
        t.j(this$0, "this$0");
        OptionSelectedListener optionSelectedListener = this$0.optionSelectedListener;
        if (optionSelectedListener != null) {
            optionSelectedListener.onAddMusicSelected();
        }
    }

    public final void initComponent(@IntRange int i10, @NotNull String title, @NotNull OptionSelectedListener listener) {
        t.j(title, "title");
        t.j(listener, "listener");
        this.actionType = i10;
        this.optionSelectedListener = listener;
        int i11 = 1;
        if (i10 == 3) {
            this.binding.optionHintText.setVisibility(8);
            this.binding.optionAddMusic.setVisibility(0);
            this.binding.optionAddMusic.setEnabled(false);
            this.binding.optionAddMusic.setImageLevel(1);
        } else {
            this.binding.optionHintText.setVisibility(0);
            this.binding.optionAddMusic.setVisibility(8);
            this.binding.optionHintText.setText(title);
        }
        ImageView imageView = this.binding.optionCancel;
        if (i10 == 2) {
            i11 = 2;
        }
        imageView.setImageLevel(i11);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.binding.optionDone.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.widget.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaOptionPanel.onFinishInflate$lambda$0(this.f2982a, view);
            }
        });
        this.binding.optionCancel.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.widget.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaOptionPanel.onFinishInflate$lambda$1(this.f2983a, view);
            }
        });
        this.binding.optionAddMusic.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.widget.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaOptionPanel.onFinishInflate$lambda$2(this.f2984a, view);
            }
        });
    }
}
