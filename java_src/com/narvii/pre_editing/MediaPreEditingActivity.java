package com.narvii.pre_editing;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.narvii.amino.BuildConfig;
import com.narvii.app.NVActivity;
import com.narvii.mediaeditor.R;
import com.narvii.model.ExternalSourceOrigin;
import com.narvii.model.Media;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.photos.PhotoManager;
import com.narvii.pre_editing.TrimVideoGenerator;
import com.narvii.pre_editing.bean.PreEditVideoUrl;
import com.narvii.pre_editing.player.PreEditMediaPlayer;
import com.narvii.pre_editing.widget.PreEditTimeLineComponent;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.text.TextUtils;
import com.narvii.video.widget.MediaOptionPanel;
import com.narvii.widget.SpinningView;
import com.narvii.youtube.YoutubeService;
import com.narvii.youtube.YoutubeVideoCallback;
import com.narvii.youtube.YoutubeVideoList;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: MediaPreEditingActivity.kt */
/* loaded from: classes3.dex */
public final class MediaPreEditingActivity extends NVActivity implements PreEditTimeLineComponent.TimeLineCallback {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MediaPreEditingActivity.class), "dialog", "getDialog()Lcom/narvii/util/dialog/ProgressDialog;"))};
    private HashMap _$_findViewCache;
    private boolean doFakeTrim;
    private Media inputMedia;
    private PhotoManager photoManager;
    private PreEditMediaPlayer player;
    private PreEditVideoUrl preEditVideoUrl;
    private PreEditTimeLineComponent timeLineComponent;
    private boolean trimVideoAuto;
    private YoutubeService youtubeService;
    private String outputPath = "";
    private final TrimVideoGenerator trimVideoGenerator = new TrimVideoGenerator(this);
    private PreEditFrameRetriever retriever = new PreEditFrameRetriever();
    private final Lazy dialog$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ProgressDialog>() { // from class: com.narvii.pre_editing.MediaPreEditingActivity$dialog$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ProgressDialog invoke() {
            ProgressDialog progressDialog = new ProgressDialog(this.this$0.getContext());
            progressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.pre_editing.MediaPreEditingActivity$dialog$2.1
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    long j = MediaPreEditingActivityKt.MIN_DURATION_MS_FOR_ENTERING_PRE_EDIT_ACTIVITY;
                    long j2 = MediaPreEditingActivity.access$getInputMedia$p(MediaPreEditingActivity$dialog$2.this.this$0).duration;
                    if (1 > j2 || j < j2) {
                        MediaPreEditingActivity$dialog$2.this.this$0.trimVideoGenerator.cancel();
                    } else {
                        MediaPreEditingActivity$dialog$2.this.this$0.finish();
                    }
                }
            });
            return progressDialog;
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public final ProgressDialog getDialog() {
        Lazy lazy = this.dialog$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ProgressDialog) lazy.getValue();
    }

    @Override // com.narvii.app.theme.NVThemeActivity
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeActivity
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

    public static final /* synthetic */ Media access$getInputMedia$p(MediaPreEditingActivity mediaPreEditingActivity) {
        Media media = mediaPreEditingActivity.inputMedia;
        if (media != null) {
            return media;
        }
        Intrinsics.throwUninitializedPropertyAccessException("inputMedia");
        throw null;
    }

    public static final /* synthetic */ PreEditMediaPlayer access$getPlayer$p(MediaPreEditingActivity mediaPreEditingActivity) {
        PreEditMediaPlayer preEditMediaPlayer = mediaPreEditingActivity.player;
        if (preEditMediaPlayer != null) {
            return preEditMediaPlayer;
        }
        Intrinsics.throwUninitializedPropertyAccessException("player");
        throw null;
    }

    public static final /* synthetic */ PreEditTimeLineComponent access$getTimeLineComponent$p(MediaPreEditingActivity mediaPreEditingActivity) {
        PreEditTimeLineComponent preEditTimeLineComponent = mediaPreEditingActivity.timeLineComponent;
        if (preEditTimeLineComponent != null) {
            return preEditTimeLineComponent;
        }
        Intrinsics.throwUninitializedPropertyAccessException("timeLineComponent");
        throw null;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        setContentView(R.layout.activity_media_pre_editing);
        PreEditTimeLineComponent video_time_line_component = (PreEditTimeLineComponent) _$_findCachedViewById(R.id.video_time_line_component);
        Intrinsics.checkExpressionValueIsNotNull(video_time_line_component, "video_time_line_component");
        this.timeLineComponent = video_time_line_component;
        MediaOptionPanel mediaOptionPanel = (MediaOptionPanel) _$_findCachedViewById(R.id.options_panel);
        String string = getString(R.string.trim);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.trim)");
        mediaOptionPanel.initComponent(1, string, new MediaOptionPanel.OptionSelectedListener() { // from class: com.narvii.pre_editing.MediaPreEditingActivity.onCreate.1
            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onAddMusicSelected() {
                MediaOptionPanel.OptionSelectedListener.DefaultImpls.onAddMusicSelected(this);
            }

            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onOptionDone(int i) {
                if (MediaPreEditingActivity.access$getPlayer$p(MediaPreEditingActivity.this).isPrepared()) {
                    MediaPreEditingActivity mediaPreEditingActivity = MediaPreEditingActivity.this;
                    mediaPreEditingActivity.startTrimVideo(MediaPreEditingActivity.access$getTimeLineComponent$p(mediaPreEditingActivity).getCutterStartPosition(), MediaPreEditingActivity.access$getTimeLineComponent$p(MediaPreEditingActivity.this).getCutterEndPosition());
                }
            }

            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onOptionCancel(int i) {
                MediaPreEditingActivity.this.setResult(0);
                MediaPreEditingActivity.this.finish();
            }
        });
        Object service = getService(ExternalSourceOrigin.EXTERNAL_SOURCE_ORIGIN_YOUTUBE);
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"youtube\")");
        this.youtubeService = (YoutubeService) service;
        Object service2 = getService("photo");
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService(\"photo\")");
        this.photoManager = (PhotoManager) service2;
        NVVideoView video_view_player = (NVVideoView) _$_findCachedViewById(R.id.video_view_player);
        Intrinsics.checkExpressionValueIsNotNull(video_view_player, "video_view_player");
        this.player = new PreEditMediaPlayer(this, video_view_player);
        PreEditMediaPlayer preEditMediaPlayer = this.player;
        if (preEditMediaPlayer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        preEditMediaPlayer.setPlayStateCallback(new PreEditMediaPlayer.PlayerStateCallback() { // from class: com.narvii.pre_editing.MediaPreEditingActivity.onCreate.2
            @Override // com.narvii.pre_editing.player.PreEditMediaPlayer.PlayerStateCallback
            public void onProgressUpdate(long j) {
                MediaPreEditingActivity.access$getTimeLineComponent$p(MediaPreEditingActivity.this).updatePlaybackTime(j);
            }

            @Override // com.narvii.pre_editing.player.PreEditMediaPlayer.PlayerStateCallback
            public void onPlayPauseStateChanged(boolean z) {
                MediaPreEditingActivity.this.updatePlayState(z);
            }

            @Override // com.narvii.pre_editing.player.PreEditMediaPlayer.PlayerStateCallback
            public void onPrepared() {
                String thumbnailVideoUrl;
                MediaPreEditingActivity.access$getPlayer$p(MediaPreEditingActivity.this).pause(50);
                if (MediaPreEditingActivity.this.preEditVideoUrl == null) {
                    return;
                }
                PreEditVideoUrl preEditVideoUrl = MediaPreEditingActivity.this.preEditVideoUrl;
                if (preEditVideoUrl == null || (thumbnailVideoUrl = preEditVideoUrl.getThumbnailVideoUrl()) == null) {
                    thumbnailVideoUrl = "";
                }
                long duration = MediaPreEditingActivity.access$getPlayer$p(MediaPreEditingActivity.this).getDuration();
                MediaPreEditingActivity.this.retriever.initRetriever(thumbnailVideoUrl);
                long longExtra = MediaPreEditingActivity.this.getIntent().getLongExtra("maxOutputTime", DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
                long longExtra2 = MediaPreEditingActivity.this.getIntent().getLongExtra("minOutputTime", ScenePollPlayView.POLL_COUNT_DOWN_MS);
                long longExtra3 = MediaPreEditingActivity.this.getIntent().getLongExtra("trimStartTime", 0L);
                long longExtra4 = MediaPreEditingActivity.this.getIntent().getLongExtra("trimEndTime", longExtra);
                PreEditTimeLineComponent preEditTimeLineComponentAccess$getTimeLineComponent$p = MediaPreEditingActivity.access$getTimeLineComponent$p(MediaPreEditingActivity.this);
                MediaPreEditingActivity mediaPreEditingActivity = MediaPreEditingActivity.this;
                preEditTimeLineComponentAccess$getTimeLineComponent$p.initTimeLine(duration, longExtra, longExtra2, longExtra3, longExtra4, mediaPreEditingActivity, mediaPreEditingActivity.retriever);
            }

            @Override // com.narvii.pre_editing.player.PreEditMediaPlayer.PlayerStateCallback
            public void onError(String msg) {
                Intrinsics.checkParameterIsNotNull(msg, "msg");
                MediaPreEditingActivity.this.showError(msg);
            }

            @Override // com.narvii.pre_editing.player.PreEditMediaPlayer.PlayerStateCallback
            public void onComplete() {
                MediaPreEditingActivity mediaPreEditingActivity = MediaPreEditingActivity.this;
                mediaPreEditingActivity.onFrameLocatedDuringMove(MediaPreEditingActivity.access$getTimeLineComponent$p(mediaPreEditingActivity).getCutterStartPosition(), MediaPreEditingActivity.access$getTimeLineComponent$p(MediaPreEditingActivity.this).getCutterEndPosition(), !Utils.isRtl(), true);
            }

            @Override // com.narvii.pre_editing.player.PreEditMediaPlayer.PlayerStateCallback
            public void onBufferingStart() {
                SpinningView video_progress_view = (SpinningView) MediaPreEditingActivity.this._$_findCachedViewById(R.id.video_progress_view);
                Intrinsics.checkExpressionValueIsNotNull(video_progress_view, "video_progress_view");
                video_progress_view.setVisibility(0);
            }

            @Override // com.narvii.pre_editing.player.PreEditMediaPlayer.PlayerStateCallback
            public void onBufferingEnd() {
                SpinningView video_progress_view = (SpinningView) MediaPreEditingActivity.this._$_findCachedViewById(R.id.video_progress_view);
                Intrinsics.checkExpressionValueIsNotNull(video_progress_view, "video_progress_view");
                video_progress_view.setVisibility(8);
            }
        });
        Object as = JacksonUtils.readAs(getStringParam("media"), Media.class);
        Intrinsics.checkExpressionValueIsNotNull(as, "JacksonUtils.readAs(getS…dia\"), Media::class.java)");
        this.inputMedia = (Media) as;
        String stringParam = getStringParam("outputPath");
        if (stringParam == null) {
            stringParam = "";
        }
        this.outputPath = stringParam;
        boolean z = false;
        this.doFakeTrim = getBooleanParam("fakeTrim", false);
        if (!this.doFakeTrim && TextUtils.isEmpty(this.outputPath)) {
            showError("");
            return;
        }
        long j = MediaPreEditingActivityKt.MIN_DURATION_MS_FOR_ENTERING_PRE_EDIT_ACTIVITY;
        Media media = this.inputMedia;
        if (media == null) {
            Intrinsics.throwUninitializedPropertyAccessException("inputMedia");
            throw null;
        }
        long j2 = media.duration;
        if (1 <= j2 && j >= j2 && !this.doFakeTrim) {
            z = true;
        }
        this.trimVideoAuto = z;
        if (this.trimVideoAuto) {
            NVVideoView video_view_player2 = (NVVideoView) _$_findCachedViewById(R.id.video_view_player);
            Intrinsics.checkExpressionValueIsNotNull(video_view_player2, "video_view_player");
            video_view_player2.setVisibility(4);
            RelativeLayout content_rl = (RelativeLayout) _$_findCachedViewById(R.id.content_rl);
            Intrinsics.checkExpressionValueIsNotNull(content_rl, "content_rl");
            content_rl.setVisibility(4);
            getDialog().show();
            getDialog().updateProgress(getResources().getString(R.string.verifying));
        }
        Media media2 = this.inputMedia;
        if (media2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("inputMedia");
            throw null;
        }
        String mediaUrl = media2.getMediaUrl();
        Intrinsics.checkExpressionValueIsNotNull(mediaUrl, "inputMedia.mediaUrl");
        startParseUrl(mediaUrl);
    }

    private final void startParseUrl(String str) {
        String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(str);
        if (!TextUtils.isEmpty(youtubeVideoIdFromUrl)) {
            SpinningView video_progress_view = (SpinningView) _$_findCachedViewById(R.id.video_progress_view);
            Intrinsics.checkExpressionValueIsNotNull(video_progress_view, "video_progress_view");
            video_progress_view.setVisibility(0);
            YoutubeService youtubeService = this.youtubeService;
            if (youtubeService != null) {
                youtubeService.exec(youtubeVideoIdFromUrl, null, new YoutubeVideoCallback() { // from class: com.narvii.pre_editing.MediaPreEditingActivity.startParseUrl.1
                    @Override // com.narvii.youtube.YoutubeVideoCallback
                    public void onFinish(String str2, YoutubeVideoList list) {
                        Intrinsics.checkParameterIsNotNull(list, "list");
                        MediaPreEditingActivity.this.preEditVideoUrl = new PreEditVideoUrl(list);
                        if (MediaPreEditingActivity.this.trimVideoAuto) {
                            SpinningView video_progress_view2 = (SpinningView) MediaPreEditingActivity.this._$_findCachedViewById(R.id.video_progress_view);
                            Intrinsics.checkExpressionValueIsNotNull(video_progress_view2, "video_progress_view");
                            video_progress_view2.setVisibility(8);
                            MediaPreEditingActivity mediaPreEditingActivity = MediaPreEditingActivity.this;
                            mediaPreEditingActivity.startTrimVideo(0L, MediaPreEditingActivity.access$getInputMedia$p(mediaPreEditingActivity).duration);
                            return;
                        }
                        PreEditMediaPlayer preEditMediaPlayerAccess$getPlayer$p = MediaPreEditingActivity.access$getPlayer$p(MediaPreEditingActivity.this);
                        PreEditVideoUrl preEditVideoUrl = MediaPreEditingActivity.this.preEditVideoUrl;
                        preEditMediaPlayerAccess$getPlayer$p.prepare(preEditVideoUrl != null ? preEditVideoUrl.getVideoUrl() : null);
                    }

                    @Override // com.narvii.youtube.YoutubeVideoCallback
                    public void onFail(String str2, int i, String str3) {
                        MediaPreEditingActivity.this.showError(str3);
                    }
                });
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("youtubeService");
                throw null;
            }
        }
        if (!StringsKt__StringsJVMKt.startsWith$default(str, "http", false, 2, null)) {
            PhotoManager photoManager = this.photoManager;
            if (photoManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("photoManager");
                throw null;
            }
            File path = photoManager.getPath(str);
            Intrinsics.checkExpressionValueIsNotNull(path, "photoManager.getPath(inputUrl)");
            str = path.getAbsolutePath();
        }
        Intrinsics.checkExpressionValueIsNotNull(str, "if (inputUrl.startsWith(…bsolutePath\n            }");
        this.preEditVideoUrl = new PreEditVideoUrl(str);
        if (this.trimVideoAuto) {
            Media media = this.inputMedia;
            if (media != null) {
                startTrimVideo(0L, media.duration);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("inputMedia");
                throw null;
            }
        }
        PreEditMediaPlayer preEditMediaPlayer = this.player;
        if (preEditMediaPlayer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        PreEditVideoUrl preEditVideoUrl = this.preEditVideoUrl;
        preEditMediaPlayer.prepare(preEditVideoUrl != null ? preEditVideoUrl.getVideoUrl() : null);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        PreEditMediaPlayer preEditMediaPlayer = this.player;
        if (preEditMediaPlayer != null) {
            preEditMediaPlayer.handleResume();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        PreEditMediaPlayer preEditMediaPlayer = this.player;
        if (preEditMediaPlayer != null) {
            preEditMediaPlayer.handlePause();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        PreEditMediaPlayer preEditMediaPlayer = this.player;
        if (preEditMediaPlayer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        preEditMediaPlayer.release();
        this.trimVideoGenerator.release();
        this.retriever.releaseExecutor();
    }

    @Override // com.narvii.pre_editing.widget.PreEditTimeLineComponent.TimeLineCallback
    public void onFrameLocatedDuringMove(long j, long j2, boolean z, boolean z2) {
        long j3 = j2 - j;
        if (j3 >= 0) {
            TextView time_line_controller_length = (TextView) _$_findCachedViewById(R.id.time_line_controller_length);
            Intrinsics.checkExpressionValueIsNotNull(time_line_controller_length, "time_line_controller_length");
            time_line_controller_length.setText(formatCropInterval(j3));
        }
        PreEditMediaPlayer preEditMediaPlayer = this.player;
        if (preEditMediaPlayer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        preEditMediaPlayer.setReplayTime(j, j2);
        PreEditMediaPlayer preEditMediaPlayer2 = this.player;
        if (preEditMediaPlayer2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        preEditMediaPlayer2.setInContinuousSeekingMode(!z2);
        if (Utils.isRtl()) {
            PreEditMediaPlayer preEditMediaPlayer3 = this.player;
            if (preEditMediaPlayer3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("player");
                throw null;
            }
            if (z) {
                j = j2;
            }
            preEditMediaPlayer3.seekTo(j, z2);
        } else {
            PreEditMediaPlayer preEditMediaPlayer4 = this.player;
            if (preEditMediaPlayer4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("player");
                throw null;
            }
            if (!z) {
                j = j2;
            }
            preEditMediaPlayer4.seekTo(j, z2);
        }
        if (z2) {
            PreEditMediaPlayer preEditMediaPlayer5 = this.player;
            if (preEditMediaPlayer5 != null) {
                preEditMediaPlayer5.start(30);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("player");
                throw null;
            }
        }
        PreEditMediaPlayer preEditMediaPlayer6 = this.player;
        if (preEditMediaPlayer6 != null) {
            preEditMediaPlayer6.pause(30);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showError(String str) {
        if (isFinishing()) {
            return;
        }
        AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setMessage(R.string.invalid_input);
        alertDialog.addButton(android.R.string.ok, 0, new View.OnClickListener() { // from class: com.narvii.pre_editing.MediaPreEditingActivity.showError.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaPreEditingActivity.this.setResult(0);
                MediaPreEditingActivity.this.finish();
            }
        });
        alertDialog.setCancelable(false);
        alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updatePlayState(boolean z) {
        ImageView player_button = (ImageView) _$_findCachedViewById(R.id.player_button);
        Intrinsics.checkExpressionValueIsNotNull(player_button, "player_button");
        player_button.setVisibility(z ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startTrimVideo(final long j, final long j2) {
        if (this.doFakeTrim) {
            Intent intent = new Intent();
            intent.putExtra("trimStartTime", j);
            intent.putExtra("trimEndTime", j2);
            intent.putExtra("index", getIntParam("index", 0));
            setResult(-1, intent);
            finish();
            return;
        }
        final long j3 = j2 - j;
        getDialog().show();
        getDialog().updateProgress(getResources().getString(R.string.importing));
        PreEditMediaPlayer preEditMediaPlayer = this.player;
        if (preEditMediaPlayer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        preEditMediaPlayer.pause(40);
        PreEditVideoUrl preEditVideoUrl = this.preEditVideoUrl;
        if (preEditVideoUrl != null) {
            this.trimVideoGenerator.startTrimVideo(preEditVideoUrl.getDownloadUrl(), this.outputPath, "ytb_" + j + "_" + j2 + "_" + System.currentTimeMillis() + ".mp4", j, j2, new TrimVideoGenerator.TrimCallback() { // from class: com.narvii.pre_editing.MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1
                @Override // com.narvii.pre_editing.TrimVideoGenerator.TrimCallback
                public void onCancel() {
                }

                @Override // com.narvii.pre_editing.TrimVideoGenerator.TrimCallback
                public void onProgress(float f) {
                    ProgressDialog dialog = this.this$0.getDialog();
                    StringBuilder sb = new StringBuilder();
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    Locale locale = Locale.US;
                    Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.US");
                    Object[] objArr = {Integer.valueOf((int) (f * 100))};
                    String str = String.format(locale, "%d", Arrays.copyOf(objArr, objArr.length));
                    Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(locale, format, *args)");
                    sb.append(str);
                    sb.append("%");
                    dialog.updateProgress(sb.toString());
                }

                @Override // com.narvii.pre_editing.TrimVideoGenerator.TrimCallback
                public void onSuccess(String outputFilePath) {
                    Intrinsics.checkParameterIsNotNull(outputFilePath, "outputFilePath");
                    this.this$0.getDialog().dismiss();
                    MediaPreEditingActivity.access$getInputMedia$p(this.this$0).type = 123;
                    MediaPreEditingActivity.access$getInputMedia$p(this.this$0).url = Uri.fromFile(new File(outputFilePath)).toString();
                    MediaPreEditingActivity.access$getInputMedia$p(this.this$0).duration = j3;
                    Intent intent2 = new Intent();
                    intent2.putExtra("media", JacksonUtils.writeAsString(MediaPreEditingActivity.access$getInputMedia$p(this.this$0)));
                    intent2.putExtra(BuildConfig.BUILD_TYPE, this.this$0.getIntent().getBundleExtra(BuildConfig.BUILD_TYPE));
                    this.this$0.setResult(-1, intent2);
                    this.this$0.finish();
                }

                @Override // com.narvii.pre_editing.TrimVideoGenerator.TrimCallback
                public void onError() {
                    this.this$0.showError("");
                }
            });
        }
    }

    private final String formatCropInterval(long j) {
        long j2 = 1000;
        long j3 = (j % j2) / 100;
        long j4 = j / j2;
        int i = R.string.trim_selected_time;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.US;
        Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.US");
        Object[] objArr = {Long.valueOf(j4), Long.valueOf(j3)};
        String str = String.format(locale, "%01d.%1d", Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(locale, format, *args)");
        String string = getString(i, new Object[]{str});
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.trim_…d.%1d\", seconds, millis))");
        return string;
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity
    public void finish() {
        super.finish();
        if (this.trimVideoAuto) {
            overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
        }
    }
}
