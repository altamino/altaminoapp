package com.narvii.media;

import android.R;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.app.NVActivity;
import com.narvii.model.Media;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.webview.WebViewFragment;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;

/* loaded from: classes3.dex */
public class YoutubeVideoPicker extends WebViewFragment {
    private final Runnable checkUrl = new Runnable() { // from class: com.narvii.media.YoutubeVideoPicker.1
        String prev;

        @Override // java.lang.Runnable
        public void run() {
            if (((WebViewFragment) YoutubeVideoPicker.this).webview == null) {
                return;
            }
            String url = ((WebViewFragment) YoutubeVideoPicker.this).webview.getUrl();
            if (!Utils.isEquals(this.prev, url)) {
                YoutubeVideoPicker.this.setVideoId(YoutubeUtils.getYoutubeVideoIdFromUrl(url));
                YoutubeVideoPicker youtubeVideoPicker = YoutubeVideoPicker.this;
                boolean zContains = true;
                if (youtubeVideoPicker.googleVideoSearch) {
                    try {
                        zContains = true ^ ("." + Uri.parse(url).getHost()).contains(".google.");
                    } catch (Exception unused) {
                    }
                    YoutubeVideoPicker.this.setShowCheckButton(zContains);
                } else {
                    youtubeVideoPicker.setShowCheckButton(!TextUtils.isEmpty(r1));
                }
                this.prev = url;
            }
            Utils.postDelayed(this, 200L);
        }
    };
    boolean googleVideoSearch;
    boolean showCheckButton;
    String videoId;

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        String youtubeVideoIdFromUrl;
        super.onViewCreated(view, bundle);
        if (bundle == null) {
            String stringParam = getStringParam("url");
            this.googleVideoSearch = getBooleanParam("googleVideoSearch");
            if (stringParam == null) {
                if (this.googleVideoSearch) {
                    loadUrl("http://video.google.com/");
                    return;
                } else {
                    loadUrl("http://m.youtube.com/");
                    return;
                }
            }
            if (!getBooleanParam("confirmUrl") || (youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(stringParam)) == null) {
                return;
            }
            this.videoId = youtubeVideoIdFromUrl;
            verifyAndReturn();
        }
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        Utils.handler.removeCallbacks(this.checkUrl);
        Utils.post(this.checkUrl);
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        Utils.handler.removeCallbacks(this.checkUrl);
        super.onPause();
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.ok, 0, R.string.ok).setIcon(new ActionBarIcon(getContext(), com.narvii.lib.R.string.fa_check)).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.string.ok).setVisible(this.showCheckButton);
        super.onPrepareOptionsMenu(menu);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            verifyAndReturn();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        return tryGoBack();
    }

    public String videoId() {
        return this.videoId;
    }

    public void setVideoId(String str) {
        this.videoId = str;
    }

    void setShowCheckButton(boolean z) {
        if (this.showCheckButton != z) {
            this.showCheckButton = z;
            invalidateOptionsMenu();
        }
    }

    protected void verifyAndReturn() {
        if (this.videoId == null) {
            NVToast.makeText(getContext(), com.narvii.lib.R.string.media_video_picker_unavailable, 0).show();
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        final ApiRequest apiRequestBuild = ApiRequest.builder()._url("http://www.youtube.com/oembed?url=http://www.youtube.com/watch?v=" + this.videoId + "&format=json").build();
        final ApiService apiService = (ApiService) getService("api");
        apiService.exec(apiRequestBuild, new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.media.YoutubeVideoPicker.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                JsonNode jsonNodeJson = json();
                String strTextValue = jsonNodeJson.get("title").textValue();
                strTextValue.charAt(0);
                String strTextValue2 = jsonNodeJson.get("author_name").textValue();
                strTextValue2.charAt(0);
                Media media = new Media();
                media.type = 103;
                media.url = "ytv://" + YoutubeVideoPicker.this.videoId;
                media.caption = strTextValue;
                media.author = strTextValue2;
                media.fileName = strTextValue;
                if (!YoutubeVideoPicker.this.getBooleanParam(MediaPickerFragment.PICK_YOUTUBE_NEED_DURATION)) {
                    YoutubeVideoPicker.this.callbackPickResult(media);
                } else {
                    YoutubeVideoPicker.this.fillAdditionalMediaInfo(media);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                progressDialog.dismiss();
                if (ApiService.shouldShowErrMessage(YoutubeVideoPicker.this.getContext())) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(YoutubeVideoPicker.this.getContext());
                    builder.setTitle(com.narvii.lib.R.string.media_youtube_verify_fail_title);
                    builder.setMessage(com.narvii.lib.R.string.media_youtube_verify_fail_msg);
                    builder.setNegativeButton(R.string.ok, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                    builder.show();
                }
            }
        });
        progressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.media.YoutubeVideoPicker.3
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                apiService.abort(apiRequestBuild);
            }
        });
    }

    /* renamed from: com.narvii.media.YoutubeVideoPicker$4, reason: invalid class name */
    class AnonymousClass4 extends Thread {
        int errorCode = 0;
        String errorMsg = null;
        final /* synthetic */ Media val$media;

        AnonymousClass4(Media media) {
            this.val$media = media;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Runnable runnable;
            try {
                try {
                    try {
                        try {
                            this.val$media.duration = YoutubeUtils.getYoutubeVideoLength(YoutubeVideoPicker.this.videoId);
                            runnable = new Runnable() { // from class: com.narvii.media.YoutubeVideoPicker.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                    YoutubeVideoPicker.this.callbackPickResult(anonymousClass4.val$media);
                                    int i = AnonymousClass4.this.errorCode;
                                }
                            };
                        } catch (JSONException e) {
                            this.errorCode = 3;
                            this.errorMsg = e.getMessage();
                            runnable = new Runnable() { // from class: com.narvii.media.YoutubeVideoPicker.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                    YoutubeVideoPicker.this.callbackPickResult(anonymousClass4.val$media);
                                    int i = AnonymousClass4.this.errorCode;
                                }
                            };
                        }
                    } catch (IOException e2) {
                        this.errorCode = 2;
                        this.errorMsg = e2.getMessage();
                        runnable = new Runnable() { // from class: com.narvii.media.YoutubeVideoPicker.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                YoutubeVideoPicker.this.callbackPickResult(anonymousClass4.val$media);
                                int i = AnonymousClass4.this.errorCode;
                            }
                        };
                    }
                } catch (Exception e3) {
                    this.errorCode = 1;
                    this.errorMsg = e3.getMessage();
                    runnable = new Runnable() { // from class: com.narvii.media.YoutubeVideoPicker.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                            YoutubeVideoPicker.this.callbackPickResult(anonymousClass4.val$media);
                            int i = AnonymousClass4.this.errorCode;
                        }
                    };
                }
                Utils.post(runnable);
            } catch (Throwable th) {
                Utils.post(new Runnable() { // from class: com.narvii.media.YoutubeVideoPicker.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                        YoutubeVideoPicker.this.callbackPickResult(anonymousClass4.val$media);
                        int i = AnonymousClass4.this.errorCode;
                    }
                });
                throw th;
            }
        }
    }

    public void fillAdditionalMediaInfo(Media media) {
        new AnonymousClass4(media).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callbackPickResult(Media media) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(media);
        String stringParam = getStringParam("pickCallback");
        if (stringParam != null) {
            MediaPickCallbackManager mediaPickCallbackManager = (MediaPickCallbackManager) getService("mediaPickCallback");
            MediaPickCallback callback = mediaPickCallbackManager == null ? null : mediaPickCallbackManager.getCallback(stringParam);
            if (callback == null) {
                return;
            }
            HashMap<String, Object> map = (HashMap) getActivity().getIntent().getExtras().getSerializable("pickCallbackParams");
            if (map == null) {
                map = new HashMap<>();
            }
            map.put("mediaList", JacksonUtils.writeAsString(arrayList));
            map.put(MediaPickerFragment.PICK_SOURCE, "Camera");
            callback.onPick(map, (NVActivity) getActivity(), true);
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("mediaList", JacksonUtils.writeAsString(arrayList));
        setResult(-1, intent);
        finish();
    }
}
