package com.narvii.pre_editing;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import androidx.webkit.ProxyConfig;
import com.google.android.material.timepicker.TimeModel;
import com.narvii.amino.BuildConfig;
import com.narvii.app.NVActivity;
import com.narvii.mediaeditor.R;
import com.narvii.mediaeditor.databinding.ActivityMediaPreEditingBinding;
import com.narvii.model.ExternalSourceOrigin;
import com.narvii.model.Media;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.photos.PhotoManager;
import com.narvii.pre_editing.bean.PreEditVideoUrl;
import com.narvii.pre_editing.player.PreEditMediaPlayer;
import com.narvii.pre_editing.widget.PreEditTimeLineComponent;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.text.TextUtils;
import com.narvii.video.widget.MediaOptionPanel;
import com.narvii.youtube.YoutubeService;
import com.narvii.youtube.YoutubeVideoCallback;
import com.narvii.youtube.YoutubeVideoList;
import java.io.File;
import java.util.Arrays;
import java.util.Locale;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.u0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes7.dex */
public final class MediaPreEditingActivity extends NVActivity implements PreEditTimeLineComponent.TimeLineCallback {
    private ActivityMediaPreEditingBinding binding;
    private boolean doFakeTrim;
    private Media inputMedia;
    private PhotoManager photoManager;
    private PreEditMediaPlayer player;

    @Nullable
    private PreEditVideoUrl preEditVideoUrl;
    private PreEditTimeLineComponent timeLineComponent;
    private boolean trimVideoAuto;
    private YoutubeService youtubeService;

    @NotNull
    private String outputPath = "";

    @NotNull
    private final TrimVideoGenerator trimVideoGenerator = new TrimVideoGenerator(this);

    @NotNull
    private PreEditFrameRetriever retriever = new PreEditFrameRetriever();

    @NotNull
    private final m dialog$delegate = o.a(new MediaPreEditingActivity$dialog$2(this));

    /* JADX INFO: Access modifiers changed from: private */
    public final void startTrimVideo(long j6, long j10) {
        if (this.doFakeTrim) {
            Intent intent = new Intent();
            intent.putExtra("trimStartTime", j6);
            intent.putExtra("trimEndTime", j10);
            intent.putExtra("index", getIntParam("index", 0));
            setResult(-1, intent);
            finish();
            return;
        }
        final long j11 = j10 - j6;
        getDialog().show();
        getDialog().updateProgress(getResources().getString(R.string.importing));
        PreEditMediaPlayer preEditMediaPlayer = this.player;
        if (preEditMediaPlayer == null) {
            t.B("player");
            preEditMediaPlayer = null;
        }
        preEditMediaPlayer.pause(40);
        PreEditVideoUrl preEditVideoUrl = this.preEditVideoUrl;
        if (preEditVideoUrl != null) {
            this.trimVideoGenerator.startTrimVideo(preEditVideoUrl.getDownloadUrl(), this.outputPath, "ytb_" + j6 + '_' + j10 + '_' + System.currentTimeMillis() + ".mp4", j6, j10, new TrimVideoGenerator.TrimCallback() { // from class: com.narvii.pre_editing.MediaPreEditingActivity$startTrimVideo$1$1
                @Override // com.narvii.pre_editing.TrimVideoGenerator.TrimCallback
                public void onCancel() {
                }

                @Override // com.narvii.pre_editing.TrimVideoGenerator.TrimCallback
                public void onError() {
                    this.this$0.showError("");
                }

                @Override // com.narvii.pre_editing.TrimVideoGenerator.TrimCallback
                public void onProgress(float f) {
                    ProgressDialog dialog = this.this$0.getDialog();
                    StringBuilder sb = new StringBuilder();
                    u0 u0Var = u0.INSTANCE;
                    String str = String.format(Locale.US, TimeModel.NUMBER_FORMAT, Arrays.copyOf(new Object[]{Integer.valueOf((int) (f * 100))}, 1));
                    t.i(str, "format(...)");
                    sb.append(str);
                    sb.append('%');
                    dialog.updateProgress(sb.toString());
                }

                @Override // com.narvii.pre_editing.TrimVideoGenerator.TrimCallback
                public void onSuccess(@NotNull String outputFilePath) {
                    t.j(outputFilePath, "outputFilePath");
                    this.this$0.getDialog().dismiss();
                    Media media = this.this$0.inputMedia;
                    Media media2 = null;
                    if (media == null) {
                        t.B("inputMedia");
                        media = null;
                    }
                    media.type = 123;
                    Media media3 = this.this$0.inputMedia;
                    if (media3 == null) {
                        t.B("inputMedia");
                        media3 = null;
                    }
                    media3.url = Uri.fromFile(new File(outputFilePath)).toString();
                    Media media4 = this.this$0.inputMedia;
                    if (media4 == null) {
                        t.B("inputMedia");
                        media4 = null;
                    }
                    media4.duration = j11;
                    Intent intent2 = new Intent();
                    Media media5 = this.this$0.inputMedia;
                    if (media5 == null) {
                        t.B("inputMedia");
                    } else {
                        media2 = media5;
                    }
                    intent2.putExtra("media", JacksonUtils.writeAsString(media2));
                    intent2.putExtra(BuildConfig.BUILD_TYPE, this.this$0.getIntent().getBundleExtra(BuildConfig.BUILD_TYPE));
                    this.this$0.setResult(-1, intent2);
                    this.this$0.finish();
                }
            });
        }
    }

    private final String formatCropInterval(long j6) {
        long j10 = 1000;
        long j11 = (j6 % j10) / ((long) 100);
        long j12 = j6 / j10;
        int i10 = R.string.trim_selected_time;
        u0 u0Var = u0.INSTANCE;
        String str = String.format(Locale.US, "%01d.%1d", Arrays.copyOf(new Object[]{Long.valueOf(j12), Long.valueOf(j11)}, 2));
        t.i(str, "format(...)");
        String string = getString(i10, str);
        t.i(string, "getString(...)");
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ProgressDialog getDialog() {
        return (ProgressDialog) this.dialog$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showError$lambda$0(MediaPreEditingActivity this$0, View view) {
        t.j(this$0, "this$0");
        this$0.setResult(0);
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updatePlayState(boolean z6) {
        ActivityMediaPreEditingBinding activityMediaPreEditingBinding = this.binding;
        if (activityMediaPreEditingBinding == null) {
            t.B("binding");
            activityMediaPreEditingBinding = null;
        }
        activityMediaPreEditingBinding.playerButton.setVisibility(z6 ? 8 : 0);
    }

    @Override // com.narvii.pre_editing.widget.PreEditTimeLineComponent.TimeLineCallback
    public void onFrameLocatedDuringMove(long j6, long j10, boolean z6, boolean z10) {
        long j11 = j10 - j6;
        PreEditMediaPlayer preEditMediaPlayer = null;
        if (j11 >= 0) {
            ActivityMediaPreEditingBinding activityMediaPreEditingBinding = this.binding;
            if (activityMediaPreEditingBinding == null) {
                t.B("binding");
                activityMediaPreEditingBinding = null;
            }
            activityMediaPreEditingBinding.timeLineControllerLength.setText(formatCropInterval(j11));
        }
        PreEditMediaPlayer preEditMediaPlayer2 = this.player;
        if (preEditMediaPlayer2 == null) {
            t.B("player");
            preEditMediaPlayer2 = null;
        }
        preEditMediaPlayer2.setReplayTime(j6, j10);
        PreEditMediaPlayer preEditMediaPlayer3 = this.player;
        if (preEditMediaPlayer3 == null) {
            t.B("player");
            preEditMediaPlayer3 = null;
        }
        preEditMediaPlayer3.setInContinuousSeekingMode(!z10);
        if (Utils.isRtl()) {
            PreEditMediaPlayer preEditMediaPlayer4 = this.player;
            if (preEditMediaPlayer4 == null) {
                t.B("player");
                preEditMediaPlayer4 = null;
            }
            if (z6) {
                j6 = j10;
            }
            preEditMediaPlayer4.seekTo(j6, z10);
        } else {
            PreEditMediaPlayer preEditMediaPlayer5 = this.player;
            if (preEditMediaPlayer5 == null) {
                t.B("player");
                preEditMediaPlayer5 = null;
            }
            if (!z6) {
                j6 = j10;
            }
            preEditMediaPlayer5.seekTo(j6, z10);
        }
        if (z10) {
            PreEditMediaPlayer preEditMediaPlayer6 = this.player;
            if (preEditMediaPlayer6 == null) {
                t.B("player");
            } else {
                preEditMediaPlayer = preEditMediaPlayer6;
            }
            preEditMediaPlayer.start(30);
            return;
        }
        PreEditMediaPlayer preEditMediaPlayer7 = this.player;
        if (preEditMediaPlayer7 == null) {
            t.B("player");
        } else {
            preEditMediaPlayer = preEditMediaPlayer7;
        }
        preEditMediaPlayer.pause(30);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showError(String str) {
        if (isFinishing()) {
            return;
        }
        AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setMessage(R.string.invalid_input);
        alertDialog.addButton(android.R.string.ok, 0, new View.OnClickListener() { // from class: com.narvii.pre_editing.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaPreEditingActivity.showError$lambda$0(this.f2606a, view);
            }
        });
        alertDialog.setCancelable(false);
        alertDialog.show();
    }

    private final void startParseUrl(String str) {
        String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(str);
        String videoUrl = null;
        Media media = null;
        if (!TextUtils.isEmpty(youtubeVideoIdFromUrl)) {
            ActivityMediaPreEditingBinding activityMediaPreEditingBinding = this.binding;
            if (activityMediaPreEditingBinding == null) {
                t.B("binding");
                activityMediaPreEditingBinding = null;
            }
            activityMediaPreEditingBinding.videoProgressView.setVisibility(0);
            YoutubeService youtubeService = this.youtubeService;
            if (youtubeService == null) {
                t.B("youtubeService");
                youtubeService = null;
            }
            youtubeService.exec(youtubeVideoIdFromUrl, null, new YoutubeVideoCallback() { // from class: com.narvii.pre_editing.MediaPreEditingActivity.startParseUrl.1
                @Override // com.narvii.youtube.YoutubeVideoCallback
                public void onFail(@Nullable String str2, int i10, @Nullable String str3) {
                    MediaPreEditingActivity.this.showError(str3);
                }

                @Override // com.narvii.youtube.YoutubeVideoCallback
                public void onFinish(@Nullable String str2, @NotNull YoutubeVideoList list) {
                    t.j(list, "list");
                    MediaPreEditingActivity.this.preEditVideoUrl = new PreEditVideoUrl(list);
                    Media media2 = null;
                    if (!MediaPreEditingActivity.this.trimVideoAuto) {
                        PreEditMediaPlayer preEditMediaPlayer = MediaPreEditingActivity.this.player;
                        if (preEditMediaPlayer == null) {
                            t.B("player");
                            preEditMediaPlayer = null;
                        }
                        PreEditVideoUrl preEditVideoUrl = MediaPreEditingActivity.this.preEditVideoUrl;
                        preEditMediaPlayer.prepare(preEditVideoUrl != null ? preEditVideoUrl.getVideoUrl() : null);
                        return;
                    }
                    ActivityMediaPreEditingBinding activityMediaPreEditingBinding2 = MediaPreEditingActivity.this.binding;
                    if (activityMediaPreEditingBinding2 == null) {
                        t.B("binding");
                        activityMediaPreEditingBinding2 = null;
                    }
                    activityMediaPreEditingBinding2.videoProgressView.setVisibility(8);
                    MediaPreEditingActivity mediaPreEditingActivity = MediaPreEditingActivity.this;
                    Media media3 = mediaPreEditingActivity.inputMedia;
                    if (media3 == null) {
                        t.B("inputMedia");
                    } else {
                        media2 = media3;
                    }
                    mediaPreEditingActivity.startTrimVideo(0L, media2.duration);
                }
            });
            return;
        }
        if (!kotlin.text.t.K(str, ProxyConfig.MATCH_HTTP, false, 2, null)) {
            PhotoManager photoManager = this.photoManager;
            if (photoManager == null) {
                t.B("photoManager");
                photoManager = null;
            }
            str = photoManager.getPath(str).getAbsolutePath();
        }
        t.g(str);
        this.preEditVideoUrl = new PreEditVideoUrl(str);
        if (this.trimVideoAuto) {
            Media media2 = this.inputMedia;
            if (media2 == null) {
                t.B("inputMedia");
            } else {
                media = media2;
            }
            startTrimVideo(0L, media.duration);
            return;
        }
        PreEditMediaPlayer preEditMediaPlayer = this.player;
        if (preEditMediaPlayer == null) {
            t.B("player");
            preEditMediaPlayer = null;
        }
        PreEditVideoUrl preEditVideoUrl = this.preEditVideoUrl;
        if (preEditVideoUrl != null) {
            videoUrl = preEditVideoUrl.getVideoUrl();
        }
        preEditMediaPlayer.prepare(videoUrl);
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity
    public void finish() {
        super.finish();
        if (this.trimVideoAuto) {
            overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
        }
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ActivityMediaPreEditingBinding activityMediaPreEditingBindingInflate = ActivityMediaPreEditingBinding.inflate(getLayoutInflater());
        t.i(activityMediaPreEditingBindingInflate, "inflate(...)");
        this.binding = activityMediaPreEditingBindingInflate;
        Media media = null;
        if (activityMediaPreEditingBindingInflate == null) {
            t.B("binding");
            activityMediaPreEditingBindingInflate = null;
        }
        setContentView(activityMediaPreEditingBindingInflate.getRoot());
        ActivityMediaPreEditingBinding activityMediaPreEditingBinding = this.binding;
        if (activityMediaPreEditingBinding == null) {
            t.B("binding");
            activityMediaPreEditingBinding = null;
        }
        PreEditTimeLineComponent videoTimeLineComponent = activityMediaPreEditingBinding.videoTimeLineComponent;
        t.i(videoTimeLineComponent, "videoTimeLineComponent");
        this.timeLineComponent = videoTimeLineComponent;
        ActivityMediaPreEditingBinding activityMediaPreEditingBinding2 = this.binding;
        if (activityMediaPreEditingBinding2 == null) {
            t.B("binding");
            activityMediaPreEditingBinding2 = null;
        }
        MediaOptionPanel mediaOptionPanel = activityMediaPreEditingBinding2.optionsPanel;
        String string = getString(R.string.trim);
        t.i(string, "getString(...)");
        boolean z6 = true;
        mediaOptionPanel.initComponent(1, string, new MediaOptionPanel.OptionSelectedListener() { // from class: com.narvii.pre_editing.MediaPreEditingActivity.onCreate.1
            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onOptionCancel(int i10) {
                MediaPreEditingActivity.this.setResult(0);
                MediaPreEditingActivity.this.finish();
            }

            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onOptionDone(int i10) {
                PreEditMediaPlayer preEditMediaPlayer = MediaPreEditingActivity.this.player;
                PreEditTimeLineComponent preEditTimeLineComponent = null;
                if (preEditMediaPlayer == null) {
                    t.B("player");
                    preEditMediaPlayer = null;
                }
                if (preEditMediaPlayer.isPrepared()) {
                    MediaPreEditingActivity mediaPreEditingActivity = MediaPreEditingActivity.this;
                    PreEditTimeLineComponent preEditTimeLineComponent2 = mediaPreEditingActivity.timeLineComponent;
                    if (preEditTimeLineComponent2 == null) {
                        t.B("timeLineComponent");
                        preEditTimeLineComponent2 = null;
                    }
                    long cutterStartPosition = preEditTimeLineComponent2.getCutterStartPosition();
                    PreEditTimeLineComponent preEditTimeLineComponent3 = MediaPreEditingActivity.this.timeLineComponent;
                    if (preEditTimeLineComponent3 == null) {
                        t.B("timeLineComponent");
                    } else {
                        preEditTimeLineComponent = preEditTimeLineComponent3;
                    }
                    mediaPreEditingActivity.startTrimVideo(cutterStartPosition, preEditTimeLineComponent.getCutterEndPosition());
                }
            }

            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onAddMusicSelected() {
                MediaOptionPanel.OptionSelectedListener.DefaultImpls.onAddMusicSelected(this);
            }
        });
        Object service = getService(ExternalSourceOrigin.EXTERNAL_SOURCE_ORIGIN_YOUTUBE);
        t.i(service, "getService(...)");
        this.youtubeService = (YoutubeService) service;
        Object service2 = getService("photo");
        t.i(service2, "getService(...)");
        this.photoManager = (PhotoManager) service2;
        ActivityMediaPreEditingBinding activityMediaPreEditingBinding3 = this.binding;
        if (activityMediaPreEditingBinding3 == null) {
            t.B("binding");
            activityMediaPreEditingBinding3 = null;
        }
        NVVideoView videoViewPlayer = activityMediaPreEditingBinding3.videoViewPlayer;
        t.i(videoViewPlayer, "videoViewPlayer");
        PreEditMediaPlayer preEditMediaPlayer = new PreEditMediaPlayer(this, videoViewPlayer);
        this.player = preEditMediaPlayer;
        preEditMediaPlayer.setPlayStateCallback(new PreEditMediaPlayer.PlayerStateCallback() { // from class: com.narvii.pre_editing.MediaPreEditingActivity.onCreate.2
            @Override // com.narvii.pre_editing.player.PreEditMediaPlayer.PlayerStateCallback
            public void onBufferingEnd() {
                ActivityMediaPreEditingBinding activityMediaPreEditingBinding4 = MediaPreEditingActivity.this.binding;
                if (activityMediaPreEditingBinding4 == null) {
                    t.B("binding");
                    activityMediaPreEditingBinding4 = null;
                }
                activityMediaPreEditingBinding4.videoProgressView.setVisibility(8);
            }

            @Override // com.narvii.pre_editing.player.PreEditMediaPlayer.PlayerStateCallback
            public void onBufferingStart() {
                ActivityMediaPreEditingBinding activityMediaPreEditingBinding4 = MediaPreEditingActivity.this.binding;
                if (activityMediaPreEditingBinding4 == null) {
                    t.B("binding");
                    activityMediaPreEditingBinding4 = null;
                }
                activityMediaPreEditingBinding4.videoProgressView.setVisibility(0);
            }

            @Override // com.narvii.pre_editing.player.PreEditMediaPlayer.PlayerStateCallback
            public void onComplete() {
                MediaPreEditingActivity mediaPreEditingActivity = MediaPreEditingActivity.this;
                PreEditTimeLineComponent preEditTimeLineComponent = mediaPreEditingActivity.timeLineComponent;
                PreEditTimeLineComponent preEditTimeLineComponent2 = null;
                if (preEditTimeLineComponent == null) {
                    t.B("timeLineComponent");
                    preEditTimeLineComponent = null;
                }
                long cutterStartPosition = preEditTimeLineComponent.getCutterStartPosition();
                PreEditTimeLineComponent preEditTimeLineComponent3 = MediaPreEditingActivity.this.timeLineComponent;
                if (preEditTimeLineComponent3 == null) {
                    t.B("timeLineComponent");
                } else {
                    preEditTimeLineComponent2 = preEditTimeLineComponent3;
                }
                mediaPreEditingActivity.onFrameLocatedDuringMove(cutterStartPosition, preEditTimeLineComponent2.getCutterEndPosition(), !Utils.isRtl(), true);
            }

            @Override // com.narvii.pre_editing.player.PreEditMediaPlayer.PlayerStateCallback
            public void onError(@NotNull String msg) {
                t.j(msg, "msg");
                MediaPreEditingActivity.this.showError(msg);
            }

            @Override // com.narvii.pre_editing.player.PreEditMediaPlayer.PlayerStateCallback
            public void onPlayPauseStateChanged(boolean z10) {
                MediaPreEditingActivity.this.updatePlayState(z10);
            }

            @Override // com.narvii.pre_editing.player.PreEditMediaPlayer.PlayerStateCallback
            public void onPrepared() {
                String thumbnailVideoUrl;
                PreEditTimeLineComponent preEditTimeLineComponent;
                PreEditMediaPlayer preEditMediaPlayer2 = MediaPreEditingActivity.this.player;
                if (preEditMediaPlayer2 == null) {
                    t.B("player");
                    preEditMediaPlayer2 = null;
                }
                preEditMediaPlayer2.pause(50);
                if (MediaPreEditingActivity.this.preEditVideoUrl == null) {
                    return;
                }
                PreEditVideoUrl preEditVideoUrl = MediaPreEditingActivity.this.preEditVideoUrl;
                if (preEditVideoUrl == null || (thumbnailVideoUrl = preEditVideoUrl.getThumbnailVideoUrl()) == null) {
                    thumbnailVideoUrl = "";
                }
                PreEditMediaPlayer preEditMediaPlayer3 = MediaPreEditingActivity.this.player;
                if (preEditMediaPlayer3 == null) {
                    t.B("player");
                    preEditMediaPlayer3 = null;
                }
                long duration = preEditMediaPlayer3.getDuration();
                MediaPreEditingActivity.this.retriever.initRetriever(thumbnailVideoUrl);
                long longExtra = MediaPreEditingActivity.this.getIntent().getLongExtra("maxOutputTime", 60000L);
                long longExtra2 = MediaPreEditingActivity.this.getIntent().getLongExtra("minOutputTime", 15000L);
                long longExtra3 = MediaPreEditingActivity.this.getIntent().getLongExtra("trimStartTime", 0L);
                long longExtra4 = MediaPreEditingActivity.this.getIntent().getLongExtra("trimEndTime", longExtra);
                PreEditTimeLineComponent preEditTimeLineComponent2 = MediaPreEditingActivity.this.timeLineComponent;
                if (preEditTimeLineComponent2 == null) {
                    t.B("timeLineComponent");
                    preEditTimeLineComponent = null;
                } else {
                    preEditTimeLineComponent = preEditTimeLineComponent2;
                }
                MediaPreEditingActivity mediaPreEditingActivity = MediaPreEditingActivity.this;
                preEditTimeLineComponent.initTimeLine(duration, longExtra, longExtra2, longExtra3, longExtra4, mediaPreEditingActivity, mediaPreEditingActivity.retriever);
            }

            @Override // com.narvii.pre_editing.player.PreEditMediaPlayer.PlayerStateCallback
            public void onProgressUpdate(long j6) {
                PreEditTimeLineComponent preEditTimeLineComponent = MediaPreEditingActivity.this.timeLineComponent;
                if (preEditTimeLineComponent == null) {
                    t.B("timeLineComponent");
                    preEditTimeLineComponent = null;
                }
                preEditTimeLineComponent.updatePlaybackTime(j6);
            }
        });
        Object as = JacksonUtils.readAs(getStringParam("media"), Media.class);
        t.i(as, "readAs(...)");
        this.inputMedia = (Media) as;
        String stringParam = getStringParam("outputPath");
        if (stringParam == null) {
            stringParam = "";
        }
        this.outputPath = stringParam;
        boolean booleanParam = getBooleanParam("fakeTrim", false);
        this.doFakeTrim = booleanParam;
        if (!booleanParam && TextUtils.isEmpty(this.outputPath)) {
            showError("");
            return;
        }
        Media media2 = this.inputMedia;
        if (media2 == null) {
            t.B("inputMedia");
            media2 = null;
        }
        long j6 = media2.duration;
        if (1 > j6 || j6 >= 61000 || this.doFakeTrim) {
            z6 = false;
        }
        this.trimVideoAuto = z6;
        if (z6) {
            ActivityMediaPreEditingBinding activityMediaPreEditingBinding4 = this.binding;
            if (activityMediaPreEditingBinding4 == null) {
                t.B("binding");
                activityMediaPreEditingBinding4 = null;
            }
            activityMediaPreEditingBinding4.videoViewPlayer.setVisibility(4);
            ActivityMediaPreEditingBinding activityMediaPreEditingBinding5 = this.binding;
            if (activityMediaPreEditingBinding5 == null) {
                t.B("binding");
                activityMediaPreEditingBinding5 = null;
            }
            activityMediaPreEditingBinding5.contentRl.setVisibility(4);
            getDialog().show();
            getDialog().updateProgress(getResources().getString(R.string.verifying));
        }
        Media media3 = this.inputMedia;
        if (media3 == null) {
            t.B("inputMedia");
        } else {
            media = media3;
        }
        String mediaUrl = media.getMediaUrl();
        t.i(mediaUrl, "getMediaUrl(...)");
        startParseUrl(mediaUrl);
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        PreEditMediaPlayer preEditMediaPlayer = this.player;
        if (preEditMediaPlayer == null) {
            t.B("player");
            preEditMediaPlayer = null;
        }
        preEditMediaPlayer.release();
        this.trimVideoGenerator.release();
        this.retriever.releaseExecutor();
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        PreEditMediaPlayer preEditMediaPlayer = this.player;
        if (preEditMediaPlayer == null) {
            t.B("player");
            preEditMediaPlayer = null;
        }
        preEditMediaPlayer.handlePause();
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        PreEditMediaPlayer preEditMediaPlayer = this.player;
        if (preEditMediaPlayer == null) {
            t.B("player");
            preEditMediaPlayer = null;
        }
        preEditMediaPlayer.handleResume();
    }
}
