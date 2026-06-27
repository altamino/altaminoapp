package com.narvii.master.home.profile;

import android.os.Bundle;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.media.MediaPickCallbackManager;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import java.io.File;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GlobalProfileMediaHelper.kt */
/* loaded from: classes3.dex */
public final class GlobalProfileMediaHelper {
    public static final Companion Companion = new Companion(null);
    public static final int TYPE_AVATAR = 1;
    public static final int TYPE_BACKGROUND = 2;
    private final File cache;
    private final NVContext ctx;
    private final MediaPickerFragment mediaPicker;

    /* compiled from: GlobalProfileMediaHelper.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public GlobalProfileMediaHelper(NVContext ctx, File cache, MediaPickerFragment mediaPicker) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(cache, "cache");
        Intrinsics.checkParameterIsNotNull(mediaPicker, "mediaPicker");
        this.ctx = ctx;
        this.cache = cache;
        this.mediaPicker = mediaPicker;
    }

    public final File getCache() {
        return this.cache;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final MediaPickerFragment getMediaPicker() {
        return this.mediaPicker;
    }

    public final void pickIcon(User user) {
        Intrinsics.checkParameterIsNotNull(user, "user");
        Bundle bundle = new Bundle();
        bundle.putString("type", "photo");
        MediaPickerFragment.MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerFragment.MediaPickerConfiguration();
        mediaPickerConfiguration.optionList = 14;
        mediaPickerConfiguration.isSingle = true;
        this.mediaPicker.pickCallback = MediaPickCallbackManager.GLOBAL_MEDIA_PICK;
        HashMap<String, Object> map = new HashMap<>();
        String strWriteAsString = JacksonUtils.writeAsString(user);
        Intrinsics.checkExpressionValueIsNotNull(strWriteAsString, "JacksonUtils.writeAsString(user)");
        map.put(GlobalProfileFragment.KEY_USER, strWriteAsString);
        map.put("type", 1);
        MediaPickerFragment mediaPickerFragment = this.mediaPicker;
        mediaPickerFragment.pickCallbackParams = map;
        mediaPickerFragment.pickMedia(this.cache, bundle, mediaPickerConfiguration);
    }

    public final void pickBackground(User user) {
        Intrinsics.checkParameterIsNotNull(user, "user");
        Bundle bundle = new Bundle();
        bundle.putString("type", "photo");
        MediaPickerFragment.MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerFragment.MediaPickerConfiguration();
        mediaPickerConfiguration.optionList = 12;
        mediaPickerConfiguration.isSingle = true;
        this.mediaPicker.pickCallback = MediaPickCallbackManager.GLOBAL_MEDIA_PICK;
        if (user.hasBackground()) {
            mediaPickerConfiguration.optionList |= 256;
            this.mediaPicker.deleteStringId = R.string.remove_background;
        }
        HashMap<String, Object> map = new HashMap<>();
        String strWriteAsString = JacksonUtils.writeAsString(user);
        Intrinsics.checkExpressionValueIsNotNull(strWriteAsString, "JacksonUtils.writeAsString(user)");
        map.put(GlobalProfileFragment.KEY_USER, strWriteAsString);
        map.put("type", 2);
        MediaPickerFragment mediaPickerFragment = this.mediaPicker;
        mediaPickerFragment.pickCallbackParams = map;
        mediaPickerFragment.pickMedia(this.cache, bundle, mediaPickerConfiguration);
    }
}
