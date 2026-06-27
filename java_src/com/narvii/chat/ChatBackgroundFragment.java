package com.narvii.chat;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.chat.util.ChatHelper;
import com.narvii.config.ConfigService;
import com.narvii.model.ChatThread;
import com.narvii.model.Media;
import com.narvii.theme.ThemePackService;
import com.narvii.util.Callback;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.widget.BlurImageView;
import com.narvii.widget.NVImageView;

/* loaded from: classes2.dex */
public class ChatBackgroundFragment extends NVFragment implements ThreadInfoHost {
    BlurImageView blurView;
    View frame;
    int frameHeight;
    NVImageView imageView;
    private SoftKeyboard.KeyboardObserver keyboardObserver;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.chat_background, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.frame = view;
        this.imageView = (NVImageView) view.findViewById(R.id.chat_background);
        this.blurView = (BlurImageView) view.findViewById(R.id.chat_blur_background);
        if (!isEmbedFragment()) {
            this.frame.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.narvii.chat.ChatBackgroundFragment.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    Utils.post(new Runnable() { // from class: com.narvii.chat.ChatBackgroundFragment.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ChatBackgroundFragment chatBackgroundFragment = ChatBackgroundFragment.this;
                            int iMax = Math.max(chatBackgroundFragment.frameHeight, chatBackgroundFragment.frame.getHeight());
                            ChatBackgroundFragment chatBackgroundFragment2 = ChatBackgroundFragment.this;
                            if (iMax != chatBackgroundFragment2.frameHeight) {
                                chatBackgroundFragment2.frameHeight = iMax;
                                ViewGroup.LayoutParams layoutParams = chatBackgroundFragment2.frame.getLayoutParams();
                                if (layoutParams != null) {
                                    ChatBackgroundFragment chatBackgroundFragment3 = ChatBackgroundFragment.this;
                                    layoutParams.height = chatBackgroundFragment3.frameHeight;
                                    chatBackgroundFragment3.frame.setLayoutParams(layoutParams);
                                }
                            }
                        }
                    });
                }
            });
        } else {
            this.keyboardObserver = SoftKeyboard.observeKeyboard(view, new Callback<Boolean>() { // from class: com.narvii.chat.ChatBackgroundFragment.2
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    if (!bool.booleanValue()) {
                        ViewGroup.LayoutParams layoutParams = ChatBackgroundFragment.this.frame.getLayoutParams();
                        if (layoutParams != null) {
                            layoutParams.height = -1;
                            ChatBackgroundFragment.this.frame.setLayoutParams(layoutParams);
                            return;
                        }
                        return;
                    }
                    int height = ChatBackgroundFragment.this.frame.getHeight();
                    ViewGroup.LayoutParams layoutParams2 = ChatBackgroundFragment.this.frame.getLayoutParams();
                    if (layoutParams2 != null) {
                        layoutParams2.height = height;
                        ChatBackgroundFragment.this.frame.setLayoutParams(layoutParams2);
                    }
                }
            });
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        SoftKeyboard.KeyboardObserver keyboardObserver = this.keyboardObserver;
        if (keyboardObserver != null) {
            keyboardObserver.dispose();
        }
        super.onDestroy();
    }

    public void setBackground(Media media) {
        this.imageView.setDefaultDrawable(themeColor());
        this.imageView.setImageMedia(media);
        this.imageView.setVisibility(0);
        this.blurView.setVisibility(4);
        this.frame.setBackgroundDrawable(null);
    }

    public void setBackground(Drawable drawable) {
        this.imageView.setDefaultDrawable(themeColor());
        this.imageView.setImageDrawable(drawable);
        this.imageView.setVisibility(0);
        this.blurView.setVisibility(4);
        this.frame.setBackgroundDrawable(null);
    }

    public void setDefaultBackground() {
        this.imageView.setVisibility(4);
        Drawable drawableThemeBackground = themeBackground();
        if (drawableThemeBackground == null) {
            this.blurView.setImageDrawable2(null);
            this.blurView.setVisibility(4);
            this.frame.setBackgroundDrawable(themeColor());
        } else {
            this.blurView.setImageDrawable2(drawableThemeBackground);
            this.blurView.setVisibility(0);
            this.frame.setBackgroundDrawable(null);
        }
    }

    public void setThread(ChatThread chatThread) {
        if (chatThread != null && chatThread.getBackground() != null) {
            setBackground(chatThread.getBackground());
        } else {
            setDefaultBackground();
        }
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public String getThreadId() {
        return getStringParam("id");
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public ChatThread getThread() {
        return ChatHelper.Companion.getThreadFromThreadInfoHost(this);
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public void onThreadChanged(ChatThread chatThread) {
        setThread(chatThread);
    }

    private Drawable themeBackground() {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        return ((ThemePackService) getService("themePack")).getDrawable(((ConfigService) getService("config")).getCommunityId(), ThemePackService.ThemeObject.BACKGROUND, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels), Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels));
    }

    private Drawable themeColor() {
        ConfigService configService = (ConfigService) getService("config");
        if (configService.getCommunityId() == 0) {
            return new ColorDrawable(getResources().getColor(R.color.color_default_primary));
        }
        float[] fArr = new float[3];
        Color.colorToHSV(((ThemePackService) getService("themePack")).getThemeColor(configService.getCommunityId()), fArr);
        fArr[2] = fArr[2] * 0.85f;
        return new ColorDrawable(Color.HSVToColor(fArr));
    }
}
