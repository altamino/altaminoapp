package com.narvii.monetization.sticker.mood;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.list.HoverAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.Community;
import com.narvii.model.Sticker;
import com.narvii.model.api.ApiResponse;
import com.narvii.onlinestatus.LockInfo;
import com.narvii.onlinestatus.UnlockItem;
import com.narvii.onlinestatus.UnlockLastMoodsDialog;
import com.narvii.rate.RateAppHelper;
import com.narvii.share.ShareLink;
import com.narvii.share.ShareLinkHelper;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.emojione.EmojioneLoader;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.video.services.VideoManager;
import com.narvii.video.widget.EditorStickerInstallFrameView;
import com.narvii.widget.CheckWindowChangeView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import tv.danmaku.ijk.media.player.IMediaPlayer;

/* loaded from: classes3.dex */
public abstract class MoodBaseListFragment extends NVListFragment {
    public static final String DEFAULT_INSTAGRAM_UID = "aminoapps";
    public static final String INSTAGRAM_URL_PREFIX = "http://instagram.com/_u/";
    public static final String INVITE_URL = "http://onelink.to/xnnwqb";
    public static final String KEY_COMPLETED_TIME = "completedTime";
    public static final String KEY_MISSION_SET = "missionSet";
    public static final int NORMAL_TASK_MOOD_COUNT = 12;
    public static final String TASK_INSTAGRAM = "followInstagram";
    public static final String TASK_INVITE = "invitedOneFriend";
    public static final String TASK_MASTER = "downloadAminoMaster";
    public static final int TASK_MOOD_COUNT_OFFSET = 8;
    public static final String TASK_RATE = "reviewUs";
    public static final String TASK_STREAK = "checkInTwoWeeks";
    private static HashMap<String, String> instagramUserMap = new HashMap<>();
    static final ArrayList<String> list = new ArrayList<>();
    private static final List<String> missionKeyList = new ArrayList();
    private AccountService account;
    public Callback<String> callback;
    CheckWindowChangeView checkWindowVisibilityView;
    protected boolean editorTheme;
    private ViewGroup hoverLayout;
    private String mood;
    PackageUtils packageUtils;
    SharedPreferences prefs;
    protected String source;
    TaskAdapter taskAdapter;
    protected VideoManager videoManager;
    String waitingRequestTaskName;
    ArrayList<LockInfo> lockInfos = new ArrayList<>();
    Runnable hoverRequestLayoutRunnable = new Runnable() { // from class: com.narvii.monetization.sticker.mood.MoodBaseListFragment.1
        @Override // java.lang.Runnable
        public void run() {
            if (MoodBaseListFragment.this.hoverLayout != null) {
                MoodBaseListFragment.this.hoverLayout.requestLayout();
            }
        }
    };
    View.OnClickListener moodClickListener = new View.OnClickListener() { // from class: com.narvii.monetization.sticker.mood.MoodBaseListFragment.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MoodBaseListFragment.this.onMoodClicked(view);
        }
    };
    View.OnClickListener emptyClickListener = new View.OnClickListener() { // from class: com.narvii.monetization.sticker.mood.MoodBaseListFragment.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isTaskLocked(ObjectNode objectNode, String str) {
        return false;
    }

    protected boolean isMoodClickable() {
        return true;
    }

    protected void onMoodClicked(View view) {
    }

    static {
        instagramUserMap.put("es", "aminoespanol");
        instagramUserMap.put("pt", "aminoportugues");
        instagramUserMap.put("ru", "aminorussian");
        instagramUserMap.put("fr", "aminofrancais");
        instagramUserMap.put("ar", "aminoarabic");
        missionKeyList.add(TASK_INSTAGRAM);
        missionKeyList.add(TASK_MASTER);
        missionKeyList.add(TASK_INVITE);
        missionKeyList.add(TASK_RATE);
        missionKeyList.add(TASK_STREAK);
        list.add(new String(new int[]{128512}, 0, 1));
        list.add(new String(new int[]{128513}, 0, 1));
        list.add(new String(new int[]{128514}, 0, 1));
        list.add(new String(new int[]{129315}, 0, 1));
        list.add(new String(new int[]{128515}, 0, 1));
        list.add(new String(new int[]{128516}, 0, 1));
        list.add(new String(new int[]{128517}, 0, 1));
        list.add(new String(new int[]{128518}, 0, 1));
        list.add(new String(new int[]{128521}, 0, 1));
        list.add(new String(new int[]{128522}, 0, 1));
        list.add(new String(new int[]{128523}, 0, 1));
        list.add(new String(new int[]{128526}, 0, 1));
        list.add(new String(new int[]{128525}, 0, 1));
        list.add(new String(new int[]{128536}, 0, 1));
        list.add(new String(new int[]{128535}, 0, 1));
        list.add(new String(new int[]{128537}, 0, 1));
        list.add(new String(new int[]{128538}, 0, 1));
        list.add(new String(new int[]{9786}, 0, 1));
        list.add(new String(new int[]{128578}, 0, 1));
        list.add(new String(new int[]{129303}, 0, 1));
        list.add(new String(new int[]{129300}, 0, 1));
        list.add(new String(new int[]{128528}, 0, 1));
        list.add(new String(new int[]{128529}, 0, 1));
        list.add(new String(new int[]{128566}, 0, 1));
        list.add(new String(new int[]{128580}, 0, 1));
        list.add(new String(new int[]{128527}, 0, 1));
        list.add(new String(new int[]{128547}, 0, 1));
        list.add(new String(new int[]{128549}, 0, 1));
        list.add(new String(new int[]{128558}, 0, 1));
        list.add(new String(new int[]{129296}, 0, 1));
        list.add(new String(new int[]{128559}, 0, 1));
        list.add(new String(new int[]{128554}, 0, 1));
        list.add(new String(new int[]{128555}, 0, 1));
        list.add(new String(new int[]{128564}, 0, 1));
        list.add(new String(new int[]{128524}, 0, 1));
        list.add(new String(new int[]{129299}, 0, 1));
        list.add(new String(new int[]{128539}, 0, 1));
        list.add(new String(new int[]{128540}, 0, 1));
        list.add(new String(new int[]{128541}, 0, 1));
        list.add(new String(new int[]{129316}, 0, 1));
        list.add(new String(new int[]{128530}, 0, 1));
        list.add(new String(new int[]{128531}, 0, 1));
        list.add(new String(new int[]{128532}, 0, 1));
        list.add(new String(new int[]{128533}, 0, 1));
        list.add(new String(new int[]{128579}, 0, 1));
        list.add(new String(new int[]{129297}, 0, 1));
        list.add(new String(new int[]{128562}, 0, 1));
        list.add(new String(new int[]{9785}, 0, 1));
        list.add(new String(new int[]{128577}, 0, 1));
        list.add(new String(new int[]{128534}, 0, 1));
        list.add(new String(new int[]{128542}, 0, 1));
        list.add(new String(new int[]{128543}, 0, 1));
        list.add(new String(new int[]{128548}, 0, 1));
        list.add(new String(new int[]{128546}, 0, 1));
        list.add(new String(new int[]{128557}, 0, 1));
        list.add(new String(new int[]{128550}, 0, 1));
        list.add(new String(new int[]{128551}, 0, 1));
        list.add(new String(new int[]{128552}, 0, 1));
        list.add(new String(new int[]{128553}, 0, 1));
        list.add(new String(new int[]{128556}, 0, 1));
        list.add(new String(new int[]{128560}, 0, 1));
        list.add(new String(new int[]{128561}, 0, 1));
        list.add(new String(new int[]{128563}, 0, 1));
        list.add(new String(new int[]{128565}, 0, 1));
        list.add(new String(new int[]{128545}, 0, 1));
        list.add(new String(new int[]{128544}, 0, 1));
        list.add(new String(new int[]{128519}, 0, 1));
        list.add(new String(new int[]{129312}, 0, 1));
        list.add(new String(new int[]{129313}, 0, 1));
        list.add(new String(new int[]{129317}, 0, 1));
        list.add(new String(new int[]{128567}, 0, 1));
        list.add(new String(new int[]{129298}, 0, 1));
        list.add(new String(new int[]{129301}, 0, 1));
        list.add(new String(new int[]{129314}, 0, 1));
        list.add(new String(new int[]{129319}, 0, 1));
        list.add(new String(new int[]{128520}, 0, 1));
        list.add(new String(new int[]{128127}, 0, 1));
        list.add(new String(new int[]{128121}, 0, 1));
        list.add(new String(new int[]{128122}, 0, 1));
        list.add(new String(new int[]{128128}, 0, 1));
        list.add(new String(new int[]{9760}, 0, 1));
        list.add(new String(new int[]{128123}, 0, 1));
        list.add(new String(new int[]{128125}, 0, 1));
        list.add(new String(new int[]{128126}, 0, 1));
        list.add(new String(new int[]{129302}, 0, 1));
        list.add(new String(new int[]{128169}, 0, 1));
        list.add(new String(new int[]{128570}, 0, 1));
        list.add(new String(new int[]{128568}, 0, 1));
        list.add(new String(new int[]{128569}, 0, 1));
        list.add(new String(new int[]{128571}, 0, 1));
        list.add(new String(new int[]{128572}, 0, 1));
        list.add(new String(new int[]{128573}, 0, 1));
        list.add(new String(new int[]{128576}, 0, 1));
        list.add(new String(new int[]{128575}, 0, 1));
        list.add(new String(new int[]{128574}, 0, 1));
        list.add(new String(new int[]{128584}, 0, 1));
        list.add(new String(new int[]{128585}, 0, 1));
        list.add(new String(new int[]{128586}, 0, 1));
        list.add(new String(new int[]{128102}, 0, 1));
        list.add(new String(new int[]{128102, 127995}, 0, 2));
        list.add(new String(new int[]{128102, 127996}, 0, 2));
        list.add(new String(new int[]{128102, 127997}, 0, 2));
        list.add(new String(new int[]{128102, 127998}, 0, 2));
        list.add(new String(new int[]{128102, 127999}, 0, 2));
        list.add(new String(new int[]{128103}, 0, 1));
        list.add(new String(new int[]{128103, 127995}, 0, 2));
        list.add(new String(new int[]{128103, 127996}, 0, 2));
        list.add(new String(new int[]{128103, 127997}, 0, 2));
        list.add(new String(new int[]{128103, 127998}, 0, 2));
        list.add(new String(new int[]{128103, 127999}, 0, 2));
        list.add(new String(new int[]{128104}, 0, 1));
        list.add(new String(new int[]{128104, 127995}, 0, 2));
        list.add(new String(new int[]{128104, 127996}, 0, 2));
        list.add(new String(new int[]{128104, 127997}, 0, 2));
        list.add(new String(new int[]{128104, 127998}, 0, 2));
        list.add(new String(new int[]{128104, 127999}, 0, 2));
        list.add(new String(new int[]{128105}, 0, 1));
        list.add(new String(new int[]{128105, 127995}, 0, 2));
        list.add(new String(new int[]{128105, 127996}, 0, 2));
        list.add(new String(new int[]{128105, 127997}, 0, 2));
        list.add(new String(new int[]{128105, 127998}, 0, 2));
        list.add(new String(new int[]{128105, 127999}, 0, 2));
        list.add(new String(new int[]{128116}, 0, 1));
        list.add(new String(new int[]{128116, 127995}, 0, 2));
        list.add(new String(new int[]{128116, 127996}, 0, 2));
        list.add(new String(new int[]{128116, 127997}, 0, 2));
        list.add(new String(new int[]{128116, 127998}, 0, 2));
        list.add(new String(new int[]{128116, 127999}, 0, 2));
        list.add(new String(new int[]{128117}, 0, 1));
        list.add(new String(new int[]{128117, 127995}, 0, 2));
        list.add(new String(new int[]{128117, 127996}, 0, 2));
        list.add(new String(new int[]{128117, 127997}, 0, 2));
        list.add(new String(new int[]{128117, 127998}, 0, 2));
        list.add(new String(new int[]{128117, 127999}, 0, 2));
        list.add(new String(new int[]{128118}, 0, 1));
        list.add(new String(new int[]{128118, 127995}, 0, 2));
        list.add(new String(new int[]{128118, 127996}, 0, 2));
        list.add(new String(new int[]{128118, 127997}, 0, 2));
        list.add(new String(new int[]{128118, 127998}, 0, 2));
        list.add(new String(new int[]{128118, 127999}, 0, 2));
        list.add(new String(new int[]{128124}, 0, 1));
        list.add(new String(new int[]{128124, 127995}, 0, 2));
        list.add(new String(new int[]{128124, 127996}, 0, 2));
        list.add(new String(new int[]{128124, 127997}, 0, 2));
        list.add(new String(new int[]{128124, 127998}, 0, 2));
        list.add(new String(new int[]{128124, 127999}, 0, 2));
        list.add(new String(new int[]{128110}, 0, 1));
        list.add(new String(new int[]{128110, 127995}, 0, 2));
        list.add(new String(new int[]{128110, 127996}, 0, 2));
        list.add(new String(new int[]{128110, 127997}, 0, 2));
        list.add(new String(new int[]{128110, 127998}, 0, 2));
        list.add(new String(new int[]{128110, 127999}, 0, 2));
        list.add(new String(new int[]{128373}, 0, 1));
        list.add(new String(new int[]{128373, 127995}, 0, 2));
        list.add(new String(new int[]{128373, 127996}, 0, 2));
        list.add(new String(new int[]{128373, 127997}, 0, 2));
        list.add(new String(new int[]{128373, 127998}, 0, 2));
        list.add(new String(new int[]{128373, 127999}, 0, 2));
        list.add(new String(new int[]{128130}, 0, 1));
        list.add(new String(new int[]{128130, 127995}, 0, 2));
        list.add(new String(new int[]{128130, 127996}, 0, 2));
        list.add(new String(new int[]{128130, 127997}, 0, 2));
        list.add(new String(new int[]{128130, 127998}, 0, 2));
        list.add(new String(new int[]{128130, 127999}, 0, 2));
        list.add(new String(new int[]{128119}, 0, 1));
        list.add(new String(new int[]{128119, 127995}, 0, 2));
        list.add(new String(new int[]{128119, 127996}, 0, 2));
        list.add(new String(new int[]{128119, 127997}, 0, 2));
        list.add(new String(new int[]{128119, 127998}, 0, 2));
        list.add(new String(new int[]{128119, 127999}, 0, 2));
        list.add(new String(new int[]{128115}, 0, 1));
        list.add(new String(new int[]{128115, 127995}, 0, 2));
        list.add(new String(new int[]{128115, 127996}, 0, 2));
        list.add(new String(new int[]{128115, 127997}, 0, 2));
        list.add(new String(new int[]{128115, 127998}, 0, 2));
        list.add(new String(new int[]{128115, 127999}, 0, 2));
        list.add(new String(new int[]{128113}, 0, 1));
        list.add(new String(new int[]{128113, 127995}, 0, 2));
        list.add(new String(new int[]{128113, 127996}, 0, 2));
        list.add(new String(new int[]{128113, 127997}, 0, 2));
        list.add(new String(new int[]{128113, 127998}, 0, 2));
        list.add(new String(new int[]{128113, 127999}, 0, 2));
        list.add(new String(new int[]{127877}, 0, 1));
        list.add(new String(new int[]{127877, 127995}, 0, 2));
        list.add(new String(new int[]{127877, 127996}, 0, 2));
        list.add(new String(new int[]{127877, 127997}, 0, 2));
        list.add(new String(new int[]{127877, 127998}, 0, 2));
        list.add(new String(new int[]{127877, 127999}, 0, 2));
        list.add(new String(new int[]{129334}, 0, 1));
        list.add(new String(new int[]{129334, 127995}, 0, 2));
        list.add(new String(new int[]{129334, 127996}, 0, 2));
        list.add(new String(new int[]{129334, 127997}, 0, 2));
        list.add(new String(new int[]{129334, 127998}, 0, 2));
        list.add(new String(new int[]{129334, 127999}, 0, 2));
        list.add(new String(new int[]{128120}, 0, 1));
        list.add(new String(new int[]{128120, 127995}, 0, 2));
        list.add(new String(new int[]{128120, 127996}, 0, 2));
        list.add(new String(new int[]{128120, 127997}, 0, 2));
        list.add(new String(new int[]{128120, 127998}, 0, 2));
        list.add(new String(new int[]{128120, 127999}, 0, 2));
        list.add(new String(new int[]{129332}, 0, 1));
        list.add(new String(new int[]{129332, 127995}, 0, 2));
        list.add(new String(new int[]{129332, 127996}, 0, 2));
        list.add(new String(new int[]{129332, 127997}, 0, 2));
        list.add(new String(new int[]{129332, 127998}, 0, 2));
        list.add(new String(new int[]{129332, 127999}, 0, 2));
        list.add(new String(new int[]{128112}, 0, 1));
        list.add(new String(new int[]{128112, 127995}, 0, 2));
        list.add(new String(new int[]{128112, 127996}, 0, 2));
        list.add(new String(new int[]{128112, 127997}, 0, 2));
        list.add(new String(new int[]{128112, 127998}, 0, 2));
        list.add(new String(new int[]{128112, 127999}, 0, 2));
        list.add(new String(new int[]{129333}, 0, 1));
        list.add(new String(new int[]{129333, 127995}, 0, 2));
        list.add(new String(new int[]{129333, 127996}, 0, 2));
        list.add(new String(new int[]{129333, 127997}, 0, 2));
        list.add(new String(new int[]{129333, 127998}, 0, 2));
        list.add(new String(new int[]{129333, 127999}, 0, 2));
        list.add(new String(new int[]{129328}, 0, 1));
        list.add(new String(new int[]{129328, 127995}, 0, 2));
        list.add(new String(new int[]{129328, 127996}, 0, 2));
        list.add(new String(new int[]{129328, 127997}, 0, 2));
        list.add(new String(new int[]{129328, 127998}, 0, 2));
        list.add(new String(new int[]{129328, 127999}, 0, 2));
        list.add(new String(new int[]{128114}, 0, 1));
        list.add(new String(new int[]{128114, 127995}, 0, 2));
        list.add(new String(new int[]{128114, 127996}, 0, 2));
        list.add(new String(new int[]{128114, 127997}, 0, 2));
        list.add(new String(new int[]{128114, 127998}, 0, 2));
        list.add(new String(new int[]{128114, 127999}, 0, 2));
        list.add(new String(new int[]{128589}, 0, 1));
        list.add(new String(new int[]{128589, 127995}, 0, 2));
        list.add(new String(new int[]{128589, 127996}, 0, 2));
        list.add(new String(new int[]{128589, 127997}, 0, 2));
        list.add(new String(new int[]{128589, 127998}, 0, 2));
        list.add(new String(new int[]{128589, 127999}, 0, 2));
        list.add(new String(new int[]{128590}, 0, 1));
        list.add(new String(new int[]{128590, 127995}, 0, 2));
        list.add(new String(new int[]{128590, 127996}, 0, 2));
        list.add(new String(new int[]{128590, 127997}, 0, 2));
        list.add(new String(new int[]{128590, 127998}, 0, 2));
        list.add(new String(new int[]{128590, 127999}, 0, 2));
        list.add(new String(new int[]{128581}, 0, 1));
        list.add(new String(new int[]{128581, 127995}, 0, 2));
        list.add(new String(new int[]{128581, 127996}, 0, 2));
        list.add(new String(new int[]{128581, 127997}, 0, 2));
        list.add(new String(new int[]{128581, 127998}, 0, 2));
        list.add(new String(new int[]{128581, 127999}, 0, 2));
        list.add(new String(new int[]{128582}, 0, 1));
        list.add(new String(new int[]{128582, 127995}, 0, 2));
        list.add(new String(new int[]{128582, 127996}, 0, 2));
        list.add(new String(new int[]{128582, 127997}, 0, 2));
        list.add(new String(new int[]{128582, 127998}, 0, 2));
        list.add(new String(new int[]{128582, 127999}, 0, 2));
        list.add(new String(new int[]{128129}, 0, 1));
        list.add(new String(new int[]{128129, 127995}, 0, 2));
        list.add(new String(new int[]{128129, 127996}, 0, 2));
        list.add(new String(new int[]{128129, 127997}, 0, 2));
        list.add(new String(new int[]{128129, 127998}, 0, 2));
        list.add(new String(new int[]{128129, 127999}, 0, 2));
        list.add(new String(new int[]{128587}, 0, 1));
        list.add(new String(new int[]{128587, 127995}, 0, 2));
        list.add(new String(new int[]{128587, 127996}, 0, 2));
        list.add(new String(new int[]{128587, 127997}, 0, 2));
        list.add(new String(new int[]{128587, 127998}, 0, 2));
        list.add(new String(new int[]{128587, 127999}, 0, 2));
        list.add(new String(new int[]{128583}, 0, 1));
        list.add(new String(new int[]{128583, 127995}, 0, 2));
        list.add(new String(new int[]{128583, 127996}, 0, 2));
        list.add(new String(new int[]{128583, 127997}, 0, 2));
        list.add(new String(new int[]{128583, 127998}, 0, 2));
        list.add(new String(new int[]{128583, 127999}, 0, 2));
        list.add(new String(new int[]{129318}, 0, 1));
        list.add(new String(new int[]{129318, 127995}, 0, 2));
        list.add(new String(new int[]{129318, 127996}, 0, 2));
        list.add(new String(new int[]{129318, 127997}, 0, 2));
        list.add(new String(new int[]{129318, 127998}, 0, 2));
        list.add(new String(new int[]{129318, 127999}, 0, 2));
        list.add(new String(new int[]{129335}, 0, 1));
        list.add(new String(new int[]{129335, 127995}, 0, 2));
        list.add(new String(new int[]{129335, 127996}, 0, 2));
        list.add(new String(new int[]{129335, 127997}, 0, 2));
        list.add(new String(new int[]{129335, 127998}, 0, 2));
        list.add(new String(new int[]{129335, 127999}, 0, 2));
        list.add(new String(new int[]{128134}, 0, 1));
        list.add(new String(new int[]{128134, 127995}, 0, 2));
        list.add(new String(new int[]{128134, 127996}, 0, 2));
        list.add(new String(new int[]{128134, 127997}, 0, 2));
        list.add(new String(new int[]{128134, 127998}, 0, 2));
        list.add(new String(new int[]{128134, 127999}, 0, 2));
        list.add(new String(new int[]{128135}, 0, 1));
        list.add(new String(new int[]{128135, 127995}, 0, 2));
        list.add(new String(new int[]{128135, 127996}, 0, 2));
        list.add(new String(new int[]{128135, 127997}, 0, 2));
        list.add(new String(new int[]{128135, 127998}, 0, 2));
        list.add(new String(new int[]{128135, 127999}, 0, 2));
        list.add(new String(new int[]{128694}, 0, 1));
        list.add(new String(new int[]{128694, 127995}, 0, 2));
        list.add(new String(new int[]{128694, 127996}, 0, 2));
        list.add(new String(new int[]{128694, 127997}, 0, 2));
        list.add(new String(new int[]{128694, 127998}, 0, 2));
        list.add(new String(new int[]{128694, 127999}, 0, 2));
        list.add(new String(new int[]{127939}, 0, 1));
        list.add(new String(new int[]{127939, 127995}, 0, 2));
        list.add(new String(new int[]{127939, 127996}, 0, 2));
        list.add(new String(new int[]{127939, 127997}, 0, 2));
        list.add(new String(new int[]{127939, 127998}, 0, 2));
        list.add(new String(new int[]{127939, 127999}, 0, 2));
        list.add(new String(new int[]{128131}, 0, 1));
        list.add(new String(new int[]{128131, 127995}, 0, 2));
        list.add(new String(new int[]{128131, 127996}, 0, 2));
        list.add(new String(new int[]{128131, 127997}, 0, 2));
        list.add(new String(new int[]{128131, 127998}, 0, 2));
        list.add(new String(new int[]{128131, 127999}, 0, 2));
        list.add(new String(new int[]{128378}, 0, 1));
        list.add(new String(new int[]{128378, 127995}, 0, 2));
        list.add(new String(new int[]{128378, 127996}, 0, 2));
        list.add(new String(new int[]{128378, 127997}, 0, 2));
        list.add(new String(new int[]{128378, 127998}, 0, 2));
        list.add(new String(new int[]{128378, 127999}, 0, 2));
        list.add(new String(new int[]{128111}, 0, 1));
        list.add(new String(new int[]{128372}, 0, 1));
        list.add(new String(new int[]{128483}, 0, 1));
        list.add(new String(new int[]{128100}, 0, 1));
        list.add(new String(new int[]{128101}, 0, 1));
        list.add(new String(new int[]{129338}, 0, 1));
        list.add(new String(new int[]{127943}, 0, 1));
        list.add(new String(new int[]{127943, 127995}, 0, 2));
        list.add(new String(new int[]{127943, 127996}, 0, 2));
        list.add(new String(new int[]{127943, 127997}, 0, 2));
        list.add(new String(new int[]{127943, 127998}, 0, 2));
        list.add(new String(new int[]{127943, 127999}, 0, 2));
        list.add(new String(new int[]{9975}, 0, 1));
        list.add(new String(new int[]{127938}, 0, 1));
        list.add(new String(new int[]{127948}, 0, 1));
        list.add(new String(new int[]{127940}, 0, 1));
        list.add(new String(new int[]{127940, 127995}, 0, 2));
        list.add(new String(new int[]{127940, 127996}, 0, 2));
        list.add(new String(new int[]{127940, 127997}, 0, 2));
        list.add(new String(new int[]{127940, 127998}, 0, 2));
        list.add(new String(new int[]{127940, 127999}, 0, 2));
        list.add(new String(new int[]{128675}, 0, 1));
        list.add(new String(new int[]{128675, 127995}, 0, 2));
        list.add(new String(new int[]{128675, 127996}, 0, 2));
        list.add(new String(new int[]{128675, 127997}, 0, 2));
        list.add(new String(new int[]{128675, 127998}, 0, 2));
        list.add(new String(new int[]{128675, 127999}, 0, 2));
        list.add(new String(new int[]{127946}, 0, 1));
        list.add(new String(new int[]{127946, 127995}, 0, 2));
        list.add(new String(new int[]{127946, 127996}, 0, 2));
        list.add(new String(new int[]{127946, 127997}, 0, 2));
        list.add(new String(new int[]{127946, 127998}, 0, 2));
        list.add(new String(new int[]{127946, 127999}, 0, 2));
        list.add(new String(new int[]{9977}, 0, 1));
        list.add(new String(new int[]{9977, 127995}, 0, 2));
        list.add(new String(new int[]{9977, 127996}, 0, 2));
        list.add(new String(new int[]{9977, 127997}, 0, 2));
        list.add(new String(new int[]{9977, 127998}, 0, 2));
        list.add(new String(new int[]{9977, 127999}, 0, 2));
        list.add(new String(new int[]{127947}, 0, 1));
        list.add(new String(new int[]{127947, 127995}, 0, 2));
        list.add(new String(new int[]{127947, 127996}, 0, 2));
        list.add(new String(new int[]{127947, 127997}, 0, 2));
        list.add(new String(new int[]{127947, 127998}, 0, 2));
        list.add(new String(new int[]{127947, 127999}, 0, 2));
        list.add(new String(new int[]{128692}, 0, 1));
        list.add(new String(new int[]{128692, 127995}, 0, 2));
        list.add(new String(new int[]{128692, 127996}, 0, 2));
        list.add(new String(new int[]{128692, 127997}, 0, 2));
        list.add(new String(new int[]{128692, 127998}, 0, 2));
        list.add(new String(new int[]{128692, 127999}, 0, 2));
        list.add(new String(new int[]{128693}, 0, 1));
        list.add(new String(new int[]{128693, 127995}, 0, 2));
        list.add(new String(new int[]{128693, 127996}, 0, 2));
        list.add(new String(new int[]{128693, 127997}, 0, 2));
        list.add(new String(new int[]{128693, 127998}, 0, 2));
        list.add(new String(new int[]{128693, 127999}, 0, 2));
        list.add(new String(new int[]{127950}, 0, 1));
        list.add(new String(new int[]{127949}, 0, 1));
        list.add(new String(new int[]{129336}, 0, 1));
        list.add(new String(new int[]{129336, 127995}, 0, 2));
        list.add(new String(new int[]{129336, 127996}, 0, 2));
        list.add(new String(new int[]{129336, 127997}, 0, 2));
        list.add(new String(new int[]{129336, 127998}, 0, 2));
        list.add(new String(new int[]{129336, 127999}, 0, 2));
        list.add(new String(new int[]{129340}, 0, 1));
        list.add(new String(new int[]{129340, 127995}, 0, 2));
        list.add(new String(new int[]{129340, 127996}, 0, 2));
        list.add(new String(new int[]{129340, 127997}, 0, 2));
        list.add(new String(new int[]{129340, 127998}, 0, 2));
        list.add(new String(new int[]{129340, 127999}, 0, 2));
        list.add(new String(new int[]{129341}, 0, 1));
        list.add(new String(new int[]{129341, 127995}, 0, 2));
        list.add(new String(new int[]{129341, 127996}, 0, 2));
        list.add(new String(new int[]{129341, 127997}, 0, 2));
        list.add(new String(new int[]{129341, 127998}, 0, 2));
        list.add(new String(new int[]{129341, 127999}, 0, 2));
        list.add(new String(new int[]{129342}, 0, 1));
        list.add(new String(new int[]{129342, 127995}, 0, 2));
        list.add(new String(new int[]{129342, 127996}, 0, 2));
        list.add(new String(new int[]{129342, 127997}, 0, 2));
        list.add(new String(new int[]{129342, 127998}, 0, 2));
        list.add(new String(new int[]{129342, 127999}, 0, 2));
        list.add(new String(new int[]{129337}, 0, 1));
        list.add(new String(new int[]{129337, 127995}, 0, 2));
        list.add(new String(new int[]{129337, 127996}, 0, 2));
        list.add(new String(new int[]{129337, 127997}, 0, 2));
        list.add(new String(new int[]{129337, 127998}, 0, 2));
        list.add(new String(new int[]{129337, 127999}, 0, 2));
        list.add(new String(new int[]{128107}, 0, 1));
        list.add(new String(new int[]{128108}, 0, 1));
        list.add(new String(new int[]{128109}, 0, 1));
        list.add(new String(new int[]{128143}, 0, 1));
        list.add(new String(new int[]{128104, 10084, 128139, 128104}, 0, 4));
        list.add(new String(new int[]{128105, 10084, 128139, 128105}, 0, 4));
        list.add(new String(new int[]{128145}, 0, 1));
        list.add(new String(new int[]{128104, 10084, 128104}, 0, 3));
        list.add(new String(new int[]{128105, 10084, 128105}, 0, 3));
        list.add(new String(new int[]{128106}, 0, 1));
        list.add(new String(new int[]{128104, 128105, 128103}, 0, 3));
        list.add(new String(new int[]{128104, 128105, 128103, 128102}, 0, 4));
        list.add(new String(new int[]{128104, 128105, 128102, 128102}, 0, 4));
        list.add(new String(new int[]{128104, 128105, 128103, 128103}, 0, 4));
        list.add(new String(new int[]{128104, 128104, 128102}, 0, 3));
        list.add(new String(new int[]{128104, 128104, 128103}, 0, 3));
        list.add(new String(new int[]{128104, 128104, 128103, 128102}, 0, 4));
        list.add(new String(new int[]{128104, 128104, 128102, 128102}, 0, 4));
        list.add(new String(new int[]{128104, 128104, 128103, 128103}, 0, 4));
        list.add(new String(new int[]{128105, 128105, 128102}, 0, 3));
        list.add(new String(new int[]{128105, 128105, 128103}, 0, 3));
        list.add(new String(new int[]{128105, 128105, 128103, 128102}, 0, 4));
        list.add(new String(new int[]{128105, 128105, 128102, 128102}, 0, 4));
        list.add(new String(new int[]{128105, 128105, 128103, 128103}, 0, 4));
        list.add(new String(new int[]{127995}, 0, 1));
        list.add(new String(new int[]{127996}, 0, 1));
        list.add(new String(new int[]{127997}, 0, 1));
        list.add(new String(new int[]{127998}, 0, 1));
        list.add(new String(new int[]{127999}, 0, 1));
        list.add(new String(new int[]{128170}, 0, 1));
        list.add(new String(new int[]{128170, 127995}, 0, 2));
        list.add(new String(new int[]{128170, 127996}, 0, 2));
        list.add(new String(new int[]{128170, 127997}, 0, 2));
        list.add(new String(new int[]{128170, 127998}, 0, 2));
        list.add(new String(new int[]{128170, 127999}, 0, 2));
        list.add(new String(new int[]{129331}, 0, 1));
        list.add(new String(new int[]{129331, 127995}, 0, 2));
        list.add(new String(new int[]{129331, 127996}, 0, 2));
        list.add(new String(new int[]{129331, 127997}, 0, 2));
        list.add(new String(new int[]{129331, 127998}, 0, 2));
        list.add(new String(new int[]{129331, 127999}, 0, 2));
        list.add(new String(new int[]{128072}, 0, 1));
        list.add(new String(new int[]{128072, 127995}, 0, 2));
        list.add(new String(new int[]{128072, 127996}, 0, 2));
        list.add(new String(new int[]{128072, 127997}, 0, 2));
        list.add(new String(new int[]{128072, 127998}, 0, 2));
        list.add(new String(new int[]{128072, 127999}, 0, 2));
        list.add(new String(new int[]{128073}, 0, 1));
        list.add(new String(new int[]{128073, 127995}, 0, 2));
        list.add(new String(new int[]{128073, 127996}, 0, 2));
        list.add(new String(new int[]{128073, 127997}, 0, 2));
        list.add(new String(new int[]{128073, 127998}, 0, 2));
        list.add(new String(new int[]{128073, 127999}, 0, 2));
        list.add(new String(new int[]{9757}, 0, 1));
        list.add(new String(new int[]{9757, 127995}, 0, 2));
        list.add(new String(new int[]{9757, 127996}, 0, 2));
        list.add(new String(new int[]{9757, 127997}, 0, 2));
        list.add(new String(new int[]{9757, 127998}, 0, 2));
        list.add(new String(new int[]{9757, 127999}, 0, 2));
        list.add(new String(new int[]{128070}, 0, 1));
        list.add(new String(new int[]{128070, 127995}, 0, 2));
        list.add(new String(new int[]{128070, 127996}, 0, 2));
        list.add(new String(new int[]{128070, 127997}, 0, 2));
        list.add(new String(new int[]{128070, 127998}, 0, 2));
        list.add(new String(new int[]{128070, 127999}, 0, 2));
        list.add(new String(new int[]{128405}, 0, 1));
        list.add(new String(new int[]{128405, 127995}, 0, 2));
        list.add(new String(new int[]{128405, 127996}, 0, 2));
        list.add(new String(new int[]{128405, 127997}, 0, 2));
        list.add(new String(new int[]{128405, 127998}, 0, 2));
        list.add(new String(new int[]{128405, 127999}, 0, 2));
        list.add(new String(new int[]{128071}, 0, 1));
        list.add(new String(new int[]{128071, 127995}, 0, 2));
        list.add(new String(new int[]{128071, 127996}, 0, 2));
        list.add(new String(new int[]{128071, 127997}, 0, 2));
        list.add(new String(new int[]{128071, 127998}, 0, 2));
        list.add(new String(new int[]{128071, 127999}, 0, 2));
        list.add(new String(new int[]{9996}, 0, 1));
        list.add(new String(new int[]{9996, 127995}, 0, 2));
        list.add(new String(new int[]{9996, 127996}, 0, 2));
        list.add(new String(new int[]{9996, 127997}, 0, 2));
        list.add(new String(new int[]{9996, 127998}, 0, 2));
        list.add(new String(new int[]{9996, 127999}, 0, 2));
        list.add(new String(new int[]{129310}, 0, 1));
        list.add(new String(new int[]{129310, 127995}, 0, 2));
        list.add(new String(new int[]{129310, 127996}, 0, 2));
        list.add(new String(new int[]{129310, 127997}, 0, 2));
        list.add(new String(new int[]{129310, 127998}, 0, 2));
        list.add(new String(new int[]{129310, 127999}, 0, 2));
        list.add(new String(new int[]{128406}, 0, 1));
        list.add(new String(new int[]{128406, 127995}, 0, 2));
        list.add(new String(new int[]{128406, 127996}, 0, 2));
        list.add(new String(new int[]{128406, 127997}, 0, 2));
        list.add(new String(new int[]{128406, 127998}, 0, 2));
        list.add(new String(new int[]{128406, 127999}, 0, 2));
        list.add(new String(new int[]{129304}, 0, 1));
        list.add(new String(new int[]{129304, 127995}, 0, 2));
        list.add(new String(new int[]{129304, 127996}, 0, 2));
        list.add(new String(new int[]{129304, 127997}, 0, 2));
        list.add(new String(new int[]{129304, 127998}, 0, 2));
        list.add(new String(new int[]{129304, 127999}, 0, 2));
        list.add(new String(new int[]{129305}, 0, 1));
        list.add(new String(new int[]{129305, 127995}, 0, 2));
        list.add(new String(new int[]{129305, 127996}, 0, 2));
        list.add(new String(new int[]{129305, 127997}, 0, 2));
        list.add(new String(new int[]{129305, 127998}, 0, 2));
        list.add(new String(new int[]{129305, 127999}, 0, 2));
        list.add(new String(new int[]{128400}, 0, 1));
        list.add(new String(new int[]{128400, 127995}, 0, 2));
        list.add(new String(new int[]{128400, 127996}, 0, 2));
        list.add(new String(new int[]{128400, 127997}, 0, 2));
        list.add(new String(new int[]{128400, 127998}, 0, 2));
        list.add(new String(new int[]{128400, 127999}, 0, 2));
        list.add(new String(new int[]{9995}, 0, 1));
        list.add(new String(new int[]{9995, 127995}, 0, 2));
        list.add(new String(new int[]{9995, 127996}, 0, 2));
        list.add(new String(new int[]{9995, 127997}, 0, 2));
        list.add(new String(new int[]{9995, 127998}, 0, 2));
        list.add(new String(new int[]{9995, 127999}, 0, 2));
        list.add(new String(new int[]{128076}, 0, 1));
        list.add(new String(new int[]{128076, 127995}, 0, 2));
        list.add(new String(new int[]{128076, 127996}, 0, 2));
        list.add(new String(new int[]{128076, 127997}, 0, 2));
        list.add(new String(new int[]{128076, 127998}, 0, 2));
        list.add(new String(new int[]{128076, 127999}, 0, 2));
        list.add(new String(new int[]{128077}, 0, 1));
        list.add(new String(new int[]{128077, 127995}, 0, 2));
        list.add(new String(new int[]{128077, 127996}, 0, 2));
        list.add(new String(new int[]{128077, 127997}, 0, 2));
        list.add(new String(new int[]{128077, 127998}, 0, 2));
        list.add(new String(new int[]{128077, 127999}, 0, 2));
        list.add(new String(new int[]{128078}, 0, 1));
        list.add(new String(new int[]{128078, 127995}, 0, 2));
        list.add(new String(new int[]{128078, 127996}, 0, 2));
        list.add(new String(new int[]{128078, 127997}, 0, 2));
        list.add(new String(new int[]{128078, 127998}, 0, 2));
        list.add(new String(new int[]{128078, 127999}, 0, 2));
        list.add(new String(new int[]{9994}, 0, 1));
        list.add(new String(new int[]{9994, 127995}, 0, 2));
        list.add(new String(new int[]{9994, 127996}, 0, 2));
        list.add(new String(new int[]{9994, 127997}, 0, 2));
        list.add(new String(new int[]{9994, 127998}, 0, 2));
        list.add(new String(new int[]{9994, 127999}, 0, 2));
        list.add(new String(new int[]{128074}, 0, 1));
        list.add(new String(new int[]{128074, 127995}, 0, 2));
        list.add(new String(new int[]{128074, 127996}, 0, 2));
        list.add(new String(new int[]{128074, 127997}, 0, 2));
        list.add(new String(new int[]{128074, 127998}, 0, 2));
        list.add(new String(new int[]{128074, 127999}, 0, 2));
        list.add(new String(new int[]{129307}, 0, 1));
        list.add(new String(new int[]{129307, 127995}, 0, 2));
        list.add(new String(new int[]{129307, 127996}, 0, 2));
        list.add(new String(new int[]{129307, 127997}, 0, 2));
        list.add(new String(new int[]{129307, 127998}, 0, 2));
        list.add(new String(new int[]{129307, 127999}, 0, 2));
        list.add(new String(new int[]{129308}, 0, 1));
        list.add(new String(new int[]{129308, 127995}, 0, 2));
        list.add(new String(new int[]{129308, 127996}, 0, 2));
        list.add(new String(new int[]{129308, 127997}, 0, 2));
        list.add(new String(new int[]{129308, 127998}, 0, 2));
        list.add(new String(new int[]{129308, 127999}, 0, 2));
        list.add(new String(new int[]{129306}, 0, 1));
        list.add(new String(new int[]{129306, 127995}, 0, 2));
        list.add(new String(new int[]{129306, 127996}, 0, 2));
        list.add(new String(new int[]{129306, 127997}, 0, 2));
        list.add(new String(new int[]{129306, 127998}, 0, 2));
        list.add(new String(new int[]{129306, 127999}, 0, 2));
        list.add(new String(new int[]{128075}, 0, 1));
        list.add(new String(new int[]{128075, 127995}, 0, 2));
        list.add(new String(new int[]{128075, 127996}, 0, 2));
        list.add(new String(new int[]{128075, 127997}, 0, 2));
        list.add(new String(new int[]{128075, 127998}, 0, 2));
        list.add(new String(new int[]{128075, 127999}, 0, 2));
        list.add(new String(new int[]{128079}, 0, 1));
        list.add(new String(new int[]{128079, 127995}, 0, 2));
        list.add(new String(new int[]{128079, 127996}, 0, 2));
        list.add(new String(new int[]{128079, 127997}, 0, 2));
        list.add(new String(new int[]{128079, 127998}, 0, 2));
        list.add(new String(new int[]{128079, 127999}, 0, 2));
        list.add(new String(new int[]{9997}, 0, 1));
        list.add(new String(new int[]{9997, 127995}, 0, 2));
        list.add(new String(new int[]{9997, 127996}, 0, 2));
        list.add(new String(new int[]{9997, 127997}, 0, 2));
        list.add(new String(new int[]{9997, 127998}, 0, 2));
        list.add(new String(new int[]{9997, 127999}, 0, 2));
        list.add(new String(new int[]{128080}, 0, 1));
        list.add(new String(new int[]{128080, 127995}, 0, 2));
        list.add(new String(new int[]{128080, 127996}, 0, 2));
        list.add(new String(new int[]{128080, 127997}, 0, 2));
        list.add(new String(new int[]{128080, 127998}, 0, 2));
        list.add(new String(new int[]{128080, 127999}, 0, 2));
        list.add(new String(new int[]{128588}, 0, 1));
        list.add(new String(new int[]{128588, 127995}, 0, 2));
        list.add(new String(new int[]{128588, 127996}, 0, 2));
        list.add(new String(new int[]{128588, 127997}, 0, 2));
        list.add(new String(new int[]{128588, 127998}, 0, 2));
        list.add(new String(new int[]{128588, 127999}, 0, 2));
        list.add(new String(new int[]{128591}, 0, 1));
        list.add(new String(new int[]{128591, 127995}, 0, 2));
        list.add(new String(new int[]{128591, 127996}, 0, 2));
        list.add(new String(new int[]{128591, 127997}, 0, 2));
        list.add(new String(new int[]{128591, 127998}, 0, 2));
        list.add(new String(new int[]{128591, 127999}, 0, 2));
        list.add(new String(new int[]{129309}, 0, 1));
        list.add(new String(new int[]{129309, 127995}, 0, 2));
        list.add(new String(new int[]{129309, 127996}, 0, 2));
        list.add(new String(new int[]{129309, 127997}, 0, 2));
        list.add(new String(new int[]{129309, 127998}, 0, 2));
        list.add(new String(new int[]{129309, 127999}, 0, 2));
        list.add(new String(new int[]{128133}, 0, 1));
        list.add(new String(new int[]{128133, 127995}, 0, 2));
        list.add(new String(new int[]{128133, 127996}, 0, 2));
        list.add(new String(new int[]{128133, 127997}, 0, 2));
        list.add(new String(new int[]{128133, 127998}, 0, 2));
        list.add(new String(new int[]{128133, 127999}, 0, 2));
        list.add(new String(new int[]{128066}, 0, 1));
        list.add(new String(new int[]{128066, 127995}, 0, 2));
        list.add(new String(new int[]{128066, 127996}, 0, 2));
        list.add(new String(new int[]{128066, 127997}, 0, 2));
        list.add(new String(new int[]{128066, 127998}, 0, 2));
        list.add(new String(new int[]{128066, 127999}, 0, 2));
        list.add(new String(new int[]{128067}, 0, 1));
        list.add(new String(new int[]{128067, 127995}, 0, 2));
        list.add(new String(new int[]{128067, 127996}, 0, 2));
        list.add(new String(new int[]{128067, 127997}, 0, 2));
        list.add(new String(new int[]{128067, 127998}, 0, 2));
        list.add(new String(new int[]{128067, 127999}, 0, 2));
        list.add(new String(new int[]{128099}, 0, 1));
        list.add(new String(new int[]{128064}, 0, 1));
        list.add(new String(new int[]{128065}, 0, 1));
        list.add(new String(new int[]{128065, 128488}, 0, 2));
        list.add(new String(new int[]{128069}, 0, 1));
        list.add(new String(new int[]{128068}, 0, 1));
        list.add(new String(new int[]{128139}, 0, 1));
        list.add(new String(new int[]{128152}, 0, 1));
        list.add(new String(new int[]{10084}, 0, 1));
        list.add(new String(new int[]{128147}, 0, 1));
        list.add(new String(new int[]{128148}, 0, 1));
        list.add(new String(new int[]{128149}, 0, 1));
        list.add(new String(new int[]{128150}, 0, 1));
        list.add(new String(new int[]{128151}, 0, 1));
        list.add(new String(new int[]{128153}, 0, 1));
        list.add(new String(new int[]{128154}, 0, 1));
        list.add(new String(new int[]{128155}, 0, 1));
        list.add(new String(new int[]{128156}, 0, 1));
        list.add(new String(new int[]{128420}, 0, 1));
        list.add(new String(new int[]{128157}, 0, 1));
        list.add(new String(new int[]{128158}, 0, 1));
        list.add(new String(new int[]{128159}, 0, 1));
        list.add(new String(new int[]{10083}, 0, 1));
        list.add(new String(new int[]{128140}, 0, 1));
        list.add(new String(new int[]{128164}, 0, 1));
        list.add(new String(new int[]{128162}, 0, 1));
        list.add(new String(new int[]{128163}, 0, 1));
        list.add(new String(new int[]{128165}, 0, 1));
        list.add(new String(new int[]{128166}, 0, 1));
        list.add(new String(new int[]{128168}, 0, 1));
        list.add(new String(new int[]{128171}, 0, 1));
        list.add(new String(new int[]{128172}, 0, 1));
        list.add(new String(new int[]{128488}, 0, 1));
        list.add(new String(new int[]{128495}, 0, 1));
        list.add(new String(new int[]{128173}, 0, 1));
        list.add(new String(new int[]{128371}, 0, 1));
        list.add(new String(new int[]{128083}, 0, 1));
        list.add(new String(new int[]{128374}, 0, 1));
        list.add(new String(new int[]{128084}, 0, 1));
        list.add(new String(new int[]{128085}, 0, 1));
        list.add(new String(new int[]{128086}, 0, 1));
        list.add(new String(new int[]{128087}, 0, 1));
        list.add(new String(new int[]{128088}, 0, 1));
        list.add(new String(new int[]{128089}, 0, 1));
        list.add(new String(new int[]{128090}, 0, 1));
        list.add(new String(new int[]{128091}, 0, 1));
        list.add(new String(new int[]{128092}, 0, 1));
        list.add(new String(new int[]{128093}, 0, 1));
        list.add(new String(new int[]{128717}, 0, 1));
        list.add(new String(new int[]{127890}, 0, 1));
        list.add(new String(new int[]{128094}, 0, 1));
        list.add(new String(new int[]{128095}, 0, 1));
        list.add(new String(new int[]{128096}, 0, 1));
        list.add(new String(new int[]{128097}, 0, 1));
        list.add(new String(new int[]{128098}, 0, 1));
        list.add(new String(new int[]{128081}, 0, 1));
        list.add(new String(new int[]{128082}, 0, 1));
        list.add(new String(new int[]{127913}, 0, 1));
        list.add(new String(new int[]{127891}, 0, 1));
        list.add(new String(new int[]{9937}, 0, 1));
        list.add(new String(new int[]{128255}, 0, 1));
        list.add(new String(new int[]{128132}, 0, 1));
        list.add(new String(new int[]{128141}, 0, 1));
        list.add(new String(new int[]{128142}, 0, 1));
        list.add(new String(new int[]{128053}, 0, 1));
        list.add(new String(new int[]{128018}, 0, 1));
        list.add(new String(new int[]{129421}, 0, 1));
        list.add(new String(new int[]{128054}, 0, 1));
        list.add(new String(new int[]{128021}, 0, 1));
        list.add(new String(new int[]{128041}, 0, 1));
        list.add(new String(new int[]{128058}, 0, 1));
        list.add(new String(new int[]{129418}, 0, 1));
        list.add(new String(new int[]{128049}, 0, 1));
        list.add(new String(new int[]{128008}, 0, 1));
        list.add(new String(new int[]{129409}, 0, 1));
        list.add(new String(new int[]{128047}, 0, 1));
        list.add(new String(new int[]{128005}, 0, 1));
        list.add(new String(new int[]{128006}, 0, 1));
        list.add(new String(new int[]{128052}, 0, 1));
        list.add(new String(new int[]{128014}, 0, 1));
        list.add(new String(new int[]{129420}, 0, 1));
        list.add(new String(new int[]{129412}, 0, 1));
        list.add(new String(new int[]{128046}, 0, 1));
        list.add(new String(new int[]{128002}, 0, 1));
        list.add(new String(new int[]{128003}, 0, 1));
        list.add(new String(new int[]{128004}, 0, 1));
        list.add(new String(new int[]{128055}, 0, 1));
        list.add(new String(new int[]{128022}, 0, 1));
        list.add(new String(new int[]{128023}, 0, 1));
        list.add(new String(new int[]{128061}, 0, 1));
        list.add(new String(new int[]{128015}, 0, 1));
        list.add(new String(new int[]{128017}, 0, 1));
        list.add(new String(new int[]{128016}, 0, 1));
        list.add(new String(new int[]{128042}, 0, 1));
        list.add(new String(new int[]{128043}, 0, 1));
        list.add(new String(new int[]{128024}, 0, 1));
        list.add(new String(new int[]{129423}, 0, 1));
        list.add(new String(new int[]{128045}, 0, 1));
        list.add(new String(new int[]{128001}, 0, 1));
        list.add(new String(new int[]{128000}, 0, 1));
        list.add(new String(new int[]{128057}, 0, 1));
        list.add(new String(new int[]{128048}, 0, 1));
        list.add(new String(new int[]{128007}, 0, 1));
        list.add(new String(new int[]{128063}, 0, 1));
        list.add(new String(new int[]{129415}, 0, 1));
        list.add(new String(new int[]{128059}, 0, 1));
        list.add(new String(new int[]{128040}, 0, 1));
        list.add(new String(new int[]{128060}, 0, 1));
        list.add(new String(new int[]{128062}, 0, 1));
        list.add(new String(new int[]{129411}, 0, 1));
        list.add(new String(new int[]{128020}, 0, 1));
        list.add(new String(new int[]{128019}, 0, 1));
        list.add(new String(new int[]{128035}, 0, 1));
        list.add(new String(new int[]{128036}, 0, 1));
        list.add(new String(new int[]{128037}, 0, 1));
        list.add(new String(new int[]{128038}, 0, 1));
        list.add(new String(new int[]{128039}, 0, 1));
        list.add(new String(new int[]{128330}, 0, 1));
        list.add(new String(new int[]{129413}, 0, 1));
        list.add(new String(new int[]{129414}, 0, 1));
        list.add(new String(new int[]{129417}, 0, 1));
        list.add(new String(new int[]{128056}, 0, 1));
        list.add(new String(new int[]{128010}, 0, 1));
        list.add(new String(new int[]{128034}, 0, 1));
        list.add(new String(new int[]{129422}, 0, 1));
        list.add(new String(new int[]{128013}, 0, 1));
        list.add(new String(new int[]{128050}, 0, 1));
        list.add(new String(new int[]{128009}, 0, 1));
        list.add(new String(new int[]{128051}, 0, 1));
        list.add(new String(new int[]{128011}, 0, 1));
        list.add(new String(new int[]{128044}, 0, 1));
        list.add(new String(new int[]{128031}, 0, 1));
        list.add(new String(new int[]{128032}, 0, 1));
        list.add(new String(new int[]{128033}, 0, 1));
        list.add(new String(new int[]{129416}, 0, 1));
        list.add(new String(new int[]{128025}, 0, 1));
        list.add(new String(new int[]{128026}, 0, 1));
        list.add(new String(new int[]{129408}, 0, 1));
        list.add(new String(new int[]{129424}, 0, 1));
        list.add(new String(new int[]{129425}, 0, 1));
        list.add(new String(new int[]{129419}, 0, 1));
        list.add(new String(new int[]{128012}, 0, 1));
        list.add(new String(new int[]{128027}, 0, 1));
        list.add(new String(new int[]{128028}, 0, 1));
        list.add(new String(new int[]{128029}, 0, 1));
        list.add(new String(new int[]{128030}, 0, 1));
        list.add(new String(new int[]{128375}, 0, 1));
        list.add(new String(new int[]{128376}, 0, 1));
        list.add(new String(new int[]{129410}, 0, 1));
        list.add(new String(new int[]{128144}, 0, 1));
        list.add(new String(new int[]{127800}, 0, 1));
        list.add(new String(new int[]{128174}, 0, 1));
        list.add(new String(new int[]{127989}, 0, 1));
        list.add(new String(new int[]{127801}, 0, 1));
        list.add(new String(new int[]{129344}, 0, 1));
        list.add(new String(new int[]{127802}, 0, 1));
        list.add(new String(new int[]{127803}, 0, 1));
        list.add(new String(new int[]{127804}, 0, 1));
        list.add(new String(new int[]{127799}, 0, 1));
        list.add(new String(new int[]{127793}, 0, 1));
        list.add(new String(new int[]{127794}, 0, 1));
        list.add(new String(new int[]{127795}, 0, 1));
        list.add(new String(new int[]{127796}, 0, 1));
        list.add(new String(new int[]{127797}, 0, 1));
        list.add(new String(new int[]{127806}, 0, 1));
        list.add(new String(new int[]{127807}, 0, 1));
        list.add(new String(new int[]{9752}, 0, 1));
        list.add(new String(new int[]{127808}, 0, 1));
        list.add(new String(new int[]{127809}, 0, 1));
        list.add(new String(new int[]{127810}, 0, 1));
        list.add(new String(new int[]{127811}, 0, 1));
        list.add(new String(new int[]{127815}, 0, 1));
        list.add(new String(new int[]{127816}, 0, 1));
        list.add(new String(new int[]{127817}, 0, 1));
        list.add(new String(new int[]{127818}, 0, 1));
        list.add(new String(new int[]{127819}, 0, 1));
        list.add(new String(new int[]{127820}, 0, 1));
        list.add(new String(new int[]{127821}, 0, 1));
        list.add(new String(new int[]{127822}, 0, 1));
        list.add(new String(new int[]{127823}, 0, 1));
        list.add(new String(new int[]{127824}, 0, 1));
        list.add(new String(new int[]{127825}, 0, 1));
        list.add(new String(new int[]{127826}, 0, 1));
        list.add(new String(new int[]{127827}, 0, 1));
        list.add(new String(new int[]{129373}, 0, 1));
        list.add(new String(new int[]{127813}, 0, 1));
        list.add(new String(new int[]{129361}, 0, 1));
        list.add(new String(new int[]{127814}, 0, 1));
        list.add(new String(new int[]{129364}, 0, 1));
        list.add(new String(new int[]{129365}, 0, 1));
        list.add(new String(new int[]{127805}, 0, 1));
        list.add(new String(new int[]{127798}, 0, 1));
        list.add(new String(new int[]{129362}, 0, 1));
        list.add(new String(new int[]{127812}, 0, 1));
        list.add(new String(new int[]{129372}, 0, 1));
        list.add(new String(new int[]{127792}, 0, 1));
        list.add(new String(new int[]{127838}, 0, 1));
        list.add(new String(new int[]{129360}, 0, 1));
        list.add(new String(new int[]{129366}, 0, 1));
        list.add(new String(new int[]{129374}, 0, 1));
        list.add(new String(new int[]{129472}, 0, 1));
        list.add(new String(new int[]{127830}, 0, 1));
        list.add(new String(new int[]{127831}, 0, 1));
        list.add(new String(new int[]{129363}, 0, 1));
        list.add(new String(new int[]{127828}, 0, 1));
        list.add(new String(new int[]{127839}, 0, 1));
        list.add(new String(new int[]{127829}, 0, 1));
        list.add(new String(new int[]{127789}, 0, 1));
        list.add(new String(new int[]{127790}, 0, 1));
        list.add(new String(new int[]{127791}, 0, 1));
        list.add(new String(new int[]{129369}, 0, 1));
        list.add(new String(new int[]{129370}, 0, 1));
        list.add(new String(new int[]{127859}, 0, 1));
        list.add(new String(new int[]{129368}, 0, 1));
        list.add(new String(new int[]{127858}, 0, 1));
        list.add(new String(new int[]{129367}, 0, 1));
        list.add(new String(new int[]{127871}, 0, 1));
        list.add(new String(new int[]{127857}, 0, 1));
        list.add(new String(new int[]{127832}, 0, 1));
        list.add(new String(new int[]{127833}, 0, 1));
        list.add(new String(new int[]{127834}, 0, 1));
        list.add(new String(new int[]{127835}, 0, 1));
        list.add(new String(new int[]{127836}, 0, 1));
        list.add(new String(new int[]{127837}, 0, 1));
        list.add(new String(new int[]{127840}, 0, 1));
        list.add(new String(new int[]{127842}, 0, 1));
        list.add(new String(new int[]{127843}, 0, 1));
        list.add(new String(new int[]{127844}, 0, 1));
        list.add(new String(new int[]{127845}, 0, 1));
        list.add(new String(new int[]{127841}, 0, 1));
        list.add(new String(new int[]{127846}, 0, 1));
        list.add(new String(new int[]{127847}, 0, 1));
        list.add(new String(new int[]{127848}, 0, 1));
        list.add(new String(new int[]{127849}, 0, 1));
        list.add(new String(new int[]{127850}, 0, 1));
        list.add(new String(new int[]{127874}, 0, 1));
        list.add(new String(new int[]{127856}, 0, 1));
        list.add(new String(new int[]{127851}, 0, 1));
        list.add(new String(new int[]{127852}, 0, 1));
        list.add(new String(new int[]{127853}, 0, 1));
        list.add(new String(new int[]{127854}, 0, 1));
        list.add(new String(new int[]{127855}, 0, 1));
        list.add(new String(new int[]{127868}, 0, 1));
        list.add(new String(new int[]{129371}, 0, 1));
        list.add(new String(new int[]{9749}, 0, 1));
        list.add(new String(new int[]{127861}, 0, 1));
        list.add(new String(new int[]{127862}, 0, 1));
        list.add(new String(new int[]{127870}, 0, 1));
        list.add(new String(new int[]{127863}, 0, 1));
        list.add(new String(new int[]{127864}, 0, 1));
        list.add(new String(new int[]{127865}, 0, 1));
        list.add(new String(new int[]{127866}, 0, 1));
        list.add(new String(new int[]{127867}, 0, 1));
        list.add(new String(new int[]{129346}, 0, 1));
        list.add(new String(new int[]{129347}, 0, 1));
        list.add(new String(new int[]{127869}, 0, 1));
        list.add(new String(new int[]{127860}, 0, 1));
        list.add(new String(new int[]{129348}, 0, 1));
        list.add(new String(new int[]{128298}, 0, 1));
        list.add(new String(new int[]{127994}, 0, 1));
        list.add(new String(new int[]{127757}, 0, 1));
        list.add(new String(new int[]{127758}, 0, 1));
        list.add(new String(new int[]{127759}, 0, 1));
        list.add(new String(new int[]{127760}, 0, 1));
        list.add(new String(new int[]{128506}, 0, 1));
        list.add(new String(new int[]{128510}, 0, 1));
        list.add(new String(new int[]{127956}, 0, 1));
        list.add(new String(new int[]{9968}, 0, 1));
        list.add(new String(new int[]{127755}, 0, 1));
        list.add(new String(new int[]{128507}, 0, 1));
        list.add(new String(new int[]{127957}, 0, 1));
        list.add(new String(new int[]{127958}, 0, 1));
        list.add(new String(new int[]{127964}, 0, 1));
        list.add(new String(new int[]{127965}, 0, 1));
        list.add(new String(new int[]{127966}, 0, 1));
        list.add(new String(new int[]{127967}, 0, 1));
        list.add(new String(new int[]{127963}, 0, 1));
        list.add(new String(new int[]{127959}, 0, 1));
        list.add(new String(new int[]{127960}, 0, 1));
        list.add(new String(new int[]{127961}, 0, 1));
        list.add(new String(new int[]{127962}, 0, 1));
        list.add(new String(new int[]{127968}, 0, 1));
        list.add(new String(new int[]{127969}, 0, 1));
        list.add(new String(new int[]{127970}, 0, 1));
        list.add(new String(new int[]{127971}, 0, 1));
        list.add(new String(new int[]{127972}, 0, 1));
        list.add(new String(new int[]{127973}, 0, 1));
        list.add(new String(new int[]{127974}, 0, 1));
        list.add(new String(new int[]{127976}, 0, 1));
        list.add(new String(new int[]{127977}, 0, 1));
        list.add(new String(new int[]{127978}, 0, 1));
        list.add(new String(new int[]{127979}, 0, 1));
        list.add(new String(new int[]{127980}, 0, 1));
        list.add(new String(new int[]{127981}, 0, 1));
        list.add(new String(new int[]{127983}, 0, 1));
        list.add(new String(new int[]{127984}, 0, 1));
        list.add(new String(new int[]{128146}, 0, 1));
        list.add(new String(new int[]{128508}, 0, 1));
        list.add(new String(new int[]{128509}, 0, 1));
        list.add(new String(new int[]{9962}, 0, 1));
        list.add(new String(new int[]{128332}, 0, 1));
        list.add(new String(new int[]{128333}, 0, 1));
        list.add(new String(new int[]{9961}, 0, 1));
        list.add(new String(new int[]{128331}, 0, 1));
        list.add(new String(new int[]{9970}, 0, 1));
        list.add(new String(new int[]{9978}, 0, 1));
        list.add(new String(new int[]{127745}, 0, 1));
        list.add(new String(new int[]{127747}, 0, 1));
        list.add(new String(new int[]{127748}, 0, 1));
        list.add(new String(new int[]{127749}, 0, 1));
        list.add(new String(new int[]{127750}, 0, 1));
        list.add(new String(new int[]{127751}, 0, 1));
        list.add(new String(new int[]{127753}, 0, 1));
        list.add(new String(new int[]{9832}, 0, 1));
        list.add(new String(new int[]{127756}, 0, 1));
        list.add(new String(new int[]{127904}, 0, 1));
        list.add(new String(new int[]{127905}, 0, 1));
        list.add(new String(new int[]{127906}, 0, 1));
        list.add(new String(new int[]{128136}, 0, 1));
        list.add(new String(new int[]{127914}, 0, 1));
        list.add(new String(new int[]{127917}, 0, 1));
        list.add(new String(new int[]{128444}, 0, 1));
        list.add(new String(new int[]{127912}, 0, 1));
        list.add(new String(new int[]{127920}, 0, 1));
        list.add(new String(new int[]{128642}, 0, 1));
        list.add(new String(new int[]{128643}, 0, 1));
        list.add(new String(new int[]{128644}, 0, 1));
        list.add(new String(new int[]{128645}, 0, 1));
        list.add(new String(new int[]{128646}, 0, 1));
        list.add(new String(new int[]{128647}, 0, 1));
        list.add(new String(new int[]{128648}, 0, 1));
        list.add(new String(new int[]{128649}, 0, 1));
        list.add(new String(new int[]{128650}, 0, 1));
        list.add(new String(new int[]{128669}, 0, 1));
        list.add(new String(new int[]{128670}, 0, 1));
        list.add(new String(new int[]{128651}, 0, 1));
        list.add(new String(new int[]{128652}, 0, 1));
        list.add(new String(new int[]{128653}, 0, 1));
        list.add(new String(new int[]{128654}, 0, 1));
        list.add(new String(new int[]{128656}, 0, 1));
        list.add(new String(new int[]{128657}, 0, 1));
        list.add(new String(new int[]{128658}, 0, 1));
        list.add(new String(new int[]{128659}, 0, 1));
        list.add(new String(new int[]{128660}, 0, 1));
        list.add(new String(new int[]{128661}, 0, 1));
        list.add(new String(new int[]{128662}, 0, 1));
        list.add(new String(new int[]{128663}, 0, 1));
        list.add(new String(new int[]{128664}, 0, 1));
        list.add(new String(new int[]{128665}, 0, 1));
        list.add(new String(new int[]{128666}, 0, 1));
        list.add(new String(new int[]{128667}, 0, 1));
        list.add(new String(new int[]{128668}, 0, 1));
        list.add(new String(new int[]{128690}, 0, 1));
        list.add(new String(new int[]{128756}, 0, 1));
        list.add(new String(new int[]{128757}, 0, 1));
        list.add(new String(new int[]{128655}, 0, 1));
        list.add(new String(new int[]{128739}, 0, 1));
        list.add(new String(new int[]{128740}, 0, 1));
        list.add(new String(new int[]{9981}, 0, 1));
        list.add(new String(new int[]{128680}, 0, 1));
        list.add(new String(new int[]{128677}, 0, 1));
        list.add(new String(new int[]{128678}, 0, 1));
        list.add(new String(new int[]{128679}, 0, 1));
        list.add(new String(new int[]{128721}, 0, 1));
        list.add(new String(new int[]{9875}, 0, 1));
        list.add(new String(new int[]{9973}, 0, 1));
        list.add(new String(new int[]{128758}, 0, 1));
        list.add(new String(new int[]{128676}, 0, 1));
        list.add(new String(new int[]{128755}, 0, 1));
        list.add(new String(new int[]{9972}, 0, 1));
        list.add(new String(new int[]{128741}, 0, 1));
        list.add(new String(new int[]{128674}, 0, 1));
        list.add(new String(new int[]{9992}, 0, 1));
        list.add(new String(new int[]{128745}, 0, 1));
        list.add(new String(new int[]{128747}, 0, 1));
        list.add(new String(new int[]{128748}, 0, 1));
        list.add(new String(new int[]{128186}, 0, 1));
        list.add(new String(new int[]{128641}, 0, 1));
        list.add(new String(new int[]{128671}, 0, 1));
        list.add(new String(new int[]{128672}, 0, 1));
        list.add(new String(new int[]{128673}, 0, 1));
        list.add(new String(new int[]{128640}, 0, 1));
        list.add(new String(new int[]{128752}, 0, 1));
        list.add(new String(new int[]{128718}, 0, 1));
        list.add(new String(new int[]{128682}, 0, 1));
        list.add(new String(new int[]{128716}, 0, 1));
        list.add(new String(new int[]{128719}, 0, 1));
        list.add(new String(new int[]{128715}, 0, 1));
        list.add(new String(new int[]{128701}, 0, 1));
        list.add(new String(new int[]{128703}, 0, 1));
        list.add(new String(new int[]{128704}, 0, 1));
        list.add(new String(new int[]{128704, 127995}, 0, 2));
        list.add(new String(new int[]{128704, 127996}, 0, 2));
        list.add(new String(new int[]{128704, 127997}, 0, 2));
        list.add(new String(new int[]{128704, 127998}, 0, 2));
        list.add(new String(new int[]{128704, 127999}, 0, 2));
        list.add(new String(new int[]{128705}, 0, 1));
        list.add(new String(new int[]{8987}, 0, 1));
        list.add(new String(new int[]{9203}, 0, 1));
        list.add(new String(new int[]{8986}, 0, 1));
        list.add(new String(new int[]{9200}, 0, 1));
        list.add(new String(new int[]{9201}, 0, 1));
        list.add(new String(new int[]{9202}, 0, 1));
        list.add(new String(new int[]{128368}, 0, 1));
        list.add(new String(new int[]{128347}, 0, 1));
        list.add(new String(new int[]{128359}, 0, 1));
        list.add(new String(new int[]{128336}, 0, 1));
        list.add(new String(new int[]{128348}, 0, 1));
        list.add(new String(new int[]{128337}, 0, 1));
        list.add(new String(new int[]{128349}, 0, 1));
        list.add(new String(new int[]{128338}, 0, 1));
        list.add(new String(new int[]{128350}, 0, 1));
        list.add(new String(new int[]{128339}, 0, 1));
        list.add(new String(new int[]{128351}, 0, 1));
        list.add(new String(new int[]{128340}, 0, 1));
        list.add(new String(new int[]{128352}, 0, 1));
        list.add(new String(new int[]{128341}, 0, 1));
        list.add(new String(new int[]{128353}, 0, 1));
        list.add(new String(new int[]{128342}, 0, 1));
        list.add(new String(new int[]{128354}, 0, 1));
        list.add(new String(new int[]{128343}, 0, 1));
        list.add(new String(new int[]{128355}, 0, 1));
        list.add(new String(new int[]{128344}, 0, 1));
        list.add(new String(new int[]{128356}, 0, 1));
        list.add(new String(new int[]{128345}, 0, 1));
        list.add(new String(new int[]{128357}, 0, 1));
        list.add(new String(new int[]{128346}, 0, 1));
        list.add(new String(new int[]{128358}, 0, 1));
        list.add(new String(new int[]{127761}, 0, 1));
        list.add(new String(new int[]{127762}, 0, 1));
        list.add(new String(new int[]{127763}, 0, 1));
        list.add(new String(new int[]{127764}, 0, 1));
        list.add(new String(new int[]{127765}, 0, 1));
        list.add(new String(new int[]{127766}, 0, 1));
        list.add(new String(new int[]{127767}, 0, 1));
        list.add(new String(new int[]{127768}, 0, 1));
        list.add(new String(new int[]{127769}, 0, 1));
        list.add(new String(new int[]{127770}, 0, 1));
        list.add(new String(new int[]{127771}, 0, 1));
        list.add(new String(new int[]{127772}, 0, 1));
        list.add(new String(new int[]{127777}, 0, 1));
        list.add(new String(new int[]{9728}, 0, 1));
        list.add(new String(new int[]{127773}, 0, 1));
        list.add(new String(new int[]{127774}, 0, 1));
        list.add(new String(new int[]{11088}, 0, 1));
        list.add(new String(new int[]{127775}, 0, 1));
        list.add(new String(new int[]{127776}, 0, 1));
        list.add(new String(new int[]{9729}, 0, 1));
        list.add(new String(new int[]{9925}, 0, 1));
        list.add(new String(new int[]{9928}, 0, 1));
        list.add(new String(new int[]{127780}, 0, 1));
        list.add(new String(new int[]{127781}, 0, 1));
        list.add(new String(new int[]{127782}, 0, 1));
        list.add(new String(new int[]{127783}, 0, 1));
        list.add(new String(new int[]{127784}, 0, 1));
        list.add(new String(new int[]{127785}, 0, 1));
        list.add(new String(new int[]{127786}, 0, 1));
        list.add(new String(new int[]{127787}, 0, 1));
        list.add(new String(new int[]{127788}, 0, 1));
        list.add(new String(new int[]{127744}, 0, 1));
        list.add(new String(new int[]{127752}, 0, 1));
        list.add(new String(new int[]{127746}, 0, 1));
        list.add(new String(new int[]{9730}, 0, 1));
        list.add(new String(new int[]{9748}, 0, 1));
        list.add(new String(new int[]{9969}, 0, 1));
        list.add(new String(new int[]{9889}, 0, 1));
        list.add(new String(new int[]{10052}, 0, 1));
        list.add(new String(new int[]{9731}, 0, 1));
        list.add(new String(new int[]{9924}, 0, 1));
        list.add(new String(new int[]{9732}, 0, 1));
        list.add(new String(new int[]{128293}, 0, 1));
        list.add(new String(new int[]{128167}, 0, 1));
        list.add(new String(new int[]{127754}, 0, 1));
        list.add(new String(new int[]{127875}, 0, 1));
        list.add(new String(new int[]{127876}, 0, 1));
        list.add(new String(new int[]{127878}, 0, 1));
        list.add(new String(new int[]{127879}, 0, 1));
        list.add(new String(new int[]{10024}, 0, 1));
        list.add(new String(new int[]{127880}, 0, 1));
        list.add(new String(new int[]{127881}, 0, 1));
        list.add(new String(new int[]{127882}, 0, 1));
        list.add(new String(new int[]{127883}, 0, 1));
        list.add(new String(new int[]{127885}, 0, 1));
        list.add(new String(new int[]{127886}, 0, 1));
        list.add(new String(new int[]{127887}, 0, 1));
        list.add(new String(new int[]{127888}, 0, 1));
        list.add(new String(new int[]{127889}, 0, 1));
        list.add(new String(new int[]{127872}, 0, 1));
        list.add(new String(new int[]{127873}, 0, 1));
        list.add(new String(new int[]{127895}, 0, 1));
        list.add(new String(new int[]{127903}, 0, 1));
        list.add(new String(new int[]{127915}, 0, 1));
        list.add(new String(new int[]{127894}, 0, 1));
        list.add(new String(new int[]{127942}, 0, 1));
        list.add(new String(new int[]{127941}, 0, 1));
        list.add(new String(new int[]{129351}, 0, 1));
        list.add(new String(new int[]{129352}, 0, 1));
        list.add(new String(new int[]{129353}, 0, 1));
        list.add(new String(new int[]{9917}, 0, 1));
        list.add(new String(new int[]{9918}, 0, 1));
        list.add(new String(new int[]{127936}, 0, 1));
        list.add(new String(new int[]{127952}, 0, 1));
        list.add(new String(new int[]{127944}, 0, 1));
        list.add(new String(new int[]{127945}, 0, 1));
        list.add(new String(new int[]{127934}, 0, 1));
        list.add(new String(new int[]{127921}, 0, 1));
        list.add(new String(new int[]{127923}, 0, 1));
        list.add(new String(new int[]{127951}, 0, 1));
        list.add(new String(new int[]{127953}, 0, 1));
        list.add(new String(new int[]{127954}, 0, 1));
        list.add(new String(new int[]{127955}, 0, 1));
        list.add(new String(new int[]{127992}, 0, 1));
        list.add(new String(new int[]{129354}, 0, 1));
        list.add(new String(new int[]{129355}, 0, 1));
        list.add(new String(new int[]{129349}, 0, 1));
        list.add(new String(new int[]{127919}, 0, 1));
        list.add(new String(new int[]{9971}, 0, 1));
        list.add(new String(new int[]{9976}, 0, 1));
        list.add(new String(new int[]{127907}, 0, 1));
        list.add(new String(new int[]{127933}, 0, 1));
        list.add(new String(new int[]{127935}, 0, 1));
        list.add(new String(new int[]{127918}, 0, 1));
        list.add(new String(new int[]{128377}, 0, 1));
        list.add(new String(new int[]{127922}, 0, 1));
        list.add(new String(new int[]{9824}, 0, 1));
        list.add(new String(new int[]{9829}, 0, 1));
        list.add(new String(new int[]{9830}, 0, 1));
        list.add(new String(new int[]{9827}, 0, 1));
        list.add(new String(new int[]{127183}, 0, 1));
        list.add(new String(new int[]{126980}, 0, 1));
        list.add(new String(new int[]{127924}, 0, 1));
        list.add(new String(new int[]{128263}, 0, 1));
        list.add(new String(new int[]{128264}, 0, 1));
        list.add(new String(new int[]{128265}, 0, 1));
        list.add(new String(new int[]{128266}, 0, 1));
        list.add(new String(new int[]{128226}, 0, 1));
        list.add(new String(new int[]{128227}, 0, 1));
        list.add(new String(new int[]{128239}, 0, 1));
        list.add(new String(new int[]{128276}, 0, 1));
        list.add(new String(new int[]{128277}, 0, 1));
        list.add(new String(new int[]{127932}, 0, 1));
        list.add(new String(new int[]{127925}, 0, 1));
        list.add(new String(new int[]{127926}, 0, 1));
        list.add(new String(new int[]{127897}, 0, 1));
        list.add(new String(new int[]{127898}, 0, 1));
        list.add(new String(new int[]{127899}, 0, 1));
        list.add(new String(new int[]{127908}, 0, 1));
        list.add(new String(new int[]{127911}, 0, 1));
        list.add(new String(new int[]{128251}, 0, 1));
        list.add(new String(new int[]{127927}, 0, 1));
        list.add(new String(new int[]{127928}, 0, 1));
        list.add(new String(new int[]{127929}, 0, 1));
        list.add(new String(new int[]{127930}, 0, 1));
        list.add(new String(new int[]{127931}, 0, 1));
        list.add(new String(new int[]{129345}, 0, 1));
        list.add(new String(new int[]{128241}, 0, 1));
        list.add(new String(new int[]{128242}, 0, 1));
        list.add(new String(new int[]{9742}, 0, 1));
        list.add(new String(new int[]{128222}, 0, 1));
        list.add(new String(new int[]{128223}, 0, 1));
        list.add(new String(new int[]{128224}, 0, 1));
        list.add(new String(new int[]{128267}, 0, 1));
        list.add(new String(new int[]{128268}, 0, 1));
        list.add(new String(new int[]{128187}, 0, 1));
        list.add(new String(new int[]{128421}, 0, 1));
        list.add(new String(new int[]{128424}, 0, 1));
        list.add(new String(new int[]{9000}, 0, 1));
        list.add(new String(new int[]{128433}, 0, 1));
        list.add(new String(new int[]{128434}, 0, 1));
        list.add(new String(new int[]{128189}, 0, 1));
        list.add(new String(new int[]{128190}, 0, 1));
        list.add(new String(new int[]{128191}, 0, 1));
        list.add(new String(new int[]{128192}, 0, 1));
        list.add(new String(new int[]{127909}, 0, 1));
        list.add(new String(new int[]{127902}, 0, 1));
        list.add(new String(new int[]{128253}, 0, 1));
        list.add(new String(new int[]{127916}, 0, 1));
        list.add(new String(new int[]{128250}, 0, 1));
        list.add(new String(new int[]{128247}, 0, 1));
        list.add(new String(new int[]{128248}, 0, 1));
        list.add(new String(new int[]{128249}, 0, 1));
        list.add(new String(new int[]{128252}, 0, 1));
        list.add(new String(new int[]{128269}, 0, 1));
        list.add(new String(new int[]{128270}, 0, 1));
        list.add(new String(new int[]{128300}, 0, 1));
        list.add(new String(new int[]{128301}, 0, 1));
        list.add(new String(new int[]{128225}, 0, 1));
        list.add(new String(new int[]{128367}, 0, 1));
        list.add(new String(new int[]{128161}, 0, 1));
        list.add(new String(new int[]{128294}, 0, 1));
        list.add(new String(new int[]{127982}, 0, 1));
        list.add(new String(new int[]{128212}, 0, 1));
        list.add(new String(new int[]{128213}, 0, 1));
        list.add(new String(new int[]{128214}, 0, 1));
        list.add(new String(new int[]{128215}, 0, 1));
        list.add(new String(new int[]{128216}, 0, 1));
        list.add(new String(new int[]{128217}, 0, 1));
        list.add(new String(new int[]{128218}, 0, 1));
        list.add(new String(new int[]{128211}, 0, 1));
        list.add(new String(new int[]{128210}, 0, 1));
        list.add(new String(new int[]{128195}, 0, 1));
        list.add(new String(new int[]{128220}, 0, 1));
        list.add(new String(new int[]{128196}, 0, 1));
        list.add(new String(new int[]{128240}, 0, 1));
        list.add(new String(new int[]{128478}, 0, 1));
        list.add(new String(new int[]{128209}, 0, 1));
        list.add(new String(new int[]{128278}, 0, 1));
        list.add(new String(new int[]{127991}, 0, 1));
        list.add(new String(new int[]{128176}, 0, 1));
        list.add(new String(new int[]{128180}, 0, 1));
        list.add(new String(new int[]{128181}, 0, 1));
        list.add(new String(new int[]{128182}, 0, 1));
        list.add(new String(new int[]{128183}, 0, 1));
        list.add(new String(new int[]{128184}, 0, 1));
        list.add(new String(new int[]{128179}, 0, 1));
        list.add(new String(new int[]{128185}, 0, 1));
        list.add(new String(new int[]{128177}, 0, 1));
        list.add(new String(new int[]{128178}, 0, 1));
        list.add(new String(new int[]{9993}, 0, 1));
        list.add(new String(new int[]{128231}, 0, 1));
        list.add(new String(new int[]{128232}, 0, 1));
        list.add(new String(new int[]{128233}, 0, 1));
        list.add(new String(new int[]{128228}, 0, 1));
        list.add(new String(new int[]{128229}, 0, 1));
        list.add(new String(new int[]{128230}, 0, 1));
        list.add(new String(new int[]{128235}, 0, 1));
        list.add(new String(new int[]{128234}, 0, 1));
        list.add(new String(new int[]{128236}, 0, 1));
        list.add(new String(new int[]{128237}, 0, 1));
        list.add(new String(new int[]{128238}, 0, 1));
        list.add(new String(new int[]{128499}, 0, 1));
        list.add(new String(new int[]{9999}, 0, 1));
        list.add(new String(new int[]{10002}, 0, 1));
        list.add(new String(new int[]{128395}, 0, 1));
        list.add(new String(new int[]{128394}, 0, 1));
        list.add(new String(new int[]{128396}, 0, 1));
        list.add(new String(new int[]{128397}, 0, 1));
        list.add(new String(new int[]{128221}, 0, 1));
        list.add(new String(new int[]{128188}, 0, 1));
        list.add(new String(new int[]{128193}, 0, 1));
        list.add(new String(new int[]{128194}, 0, 1));
        list.add(new String(new int[]{128450}, 0, 1));
        list.add(new String(new int[]{128197}, 0, 1));
        list.add(new String(new int[]{128198}, 0, 1));
        list.add(new String(new int[]{128466}, 0, 1));
        list.add(new String(new int[]{128467}, 0, 1));
        list.add(new String(new int[]{128199}, 0, 1));
        list.add(new String(new int[]{128200}, 0, 1));
        list.add(new String(new int[]{128201}, 0, 1));
        list.add(new String(new int[]{128202}, 0, 1));
        list.add(new String(new int[]{128203}, 0, 1));
        list.add(new String(new int[]{128204}, 0, 1));
        list.add(new String(new int[]{128205}, 0, 1));
        list.add(new String(new int[]{128206}, 0, 1));
        list.add(new String(new int[]{128391}, 0, 1));
        list.add(new String(new int[]{128207}, 0, 1));
        list.add(new String(new int[]{128208}, 0, 1));
        list.add(new String(new int[]{9986}, 0, 1));
        list.add(new String(new int[]{128451}, 0, 1));
        list.add(new String(new int[]{128452}, 0, 1));
        list.add(new String(new int[]{128465}, 0, 1));
        list.add(new String(new int[]{128274}, 0, 1));
        list.add(new String(new int[]{128275}, 0, 1));
        list.add(new String(new int[]{128271}, 0, 1));
        list.add(new String(new int[]{128272}, 0, 1));
        list.add(new String(new int[]{128273}, 0, 1));
        list.add(new String(new int[]{128477}, 0, 1));
        list.add(new String(new int[]{128296}, 0, 1));
        list.add(new String(new int[]{9935}, 0, 1));
        list.add(new String(new int[]{9874}, 0, 1));
        list.add(new String(new int[]{128736}, 0, 1));
        list.add(new String(new int[]{128481}, 0, 1));
        list.add(new String(new int[]{9876}, 0, 1));
        list.add(new String(new int[]{128299}, 0, 1));
        list.add(new String(new int[]{127993}, 0, 1));
        list.add(new String(new int[]{128737}, 0, 1));
        list.add(new String(new int[]{128295}, 0, 1));
        list.add(new String(new int[]{128297}, 0, 1));
        list.add(new String(new int[]{9881}, 0, 1));
        list.add(new String(new int[]{128476}, 0, 1));
        list.add(new String(new int[]{9879}, 0, 1));
        list.add(new String(new int[]{9878}, 0, 1));
        list.add(new String(new int[]{128279}, 0, 1));
        list.add(new String(new int[]{9939}, 0, 1));
        list.add(new String(new int[]{128137}, 0, 1));
        list.add(new String(new int[]{128138}, 0, 1));
        list.add(new String(new int[]{128684}, 0, 1));
        list.add(new String(new int[]{9904}, 0, 1));
        list.add(new String(new int[]{9905}, 0, 1));
        list.add(new String(new int[]{128511}, 0, 1));
        list.add(new String(new int[]{128738}, 0, 1));
        list.add(new String(new int[]{128302}, 0, 1));
        list.add(new String(new int[]{128722}, 0, 1));
        list.add(new String(new int[]{127975}, 0, 1));
        list.add(new String(new int[]{128686}, 0, 1));
        list.add(new String(new int[]{128688}, 0, 1));
        list.add(new String(new int[]{9855}, 0, 1));
        list.add(new String(new int[]{128697}, 0, 1));
        list.add(new String(new int[]{128698}, 0, 1));
        list.add(new String(new int[]{128699}, 0, 1));
        list.add(new String(new int[]{128700}, 0, 1));
        list.add(new String(new int[]{128702}, 0, 1));
        list.add(new String(new int[]{128706}, 0, 1));
        list.add(new String(new int[]{128707}, 0, 1));
        list.add(new String(new int[]{128708}, 0, 1));
        list.add(new String(new int[]{128709}, 0, 1));
        list.add(new String(new int[]{9888}, 0, 1));
        list.add(new String(new int[]{128696}, 0, 1));
        list.add(new String(new int[]{9940}, 0, 1));
        list.add(new String(new int[]{128683}, 0, 1));
        list.add(new String(new int[]{128691}, 0, 1));
        list.add(new String(new int[]{128685}, 0, 1));
        list.add(new String(new int[]{128687}, 0, 1));
        list.add(new String(new int[]{128689}, 0, 1));
        list.add(new String(new int[]{128695}, 0, 1));
        list.add(new String(new int[]{128245}, 0, 1));
        list.add(new String(new int[]{128286}, 0, 1));
        list.add(new String(new int[]{9762}, 0, 1));
        list.add(new String(new int[]{9763}, 0, 1));
        list.add(new String(new int[]{11014}, 0, 1));
        list.add(new String(new int[]{8599}, 0, 1));
        list.add(new String(new int[]{10145}, 0, 1));
        list.add(new String(new int[]{8600}, 0, 1));
        list.add(new String(new int[]{11015}, 0, 1));
        list.add(new String(new int[]{8601}, 0, 1));
        list.add(new String(new int[]{11013}, 0, 1));
        list.add(new String(new int[]{8598}, 0, 1));
        list.add(new String(new int[]{8597}, 0, 1));
        list.add(new String(new int[]{8596}, 0, 1));
        list.add(new String(new int[]{8617}, 0, 1));
        list.add(new String(new int[]{8618}, 0, 1));
        list.add(new String(new int[]{10548}, 0, 1));
        list.add(new String(new int[]{10549}, 0, 1));
        list.add(new String(new int[]{128259}, 0, 1));
        list.add(new String(new int[]{128260}, 0, 1));
        list.add(new String(new int[]{128281}, 0, 1));
        list.add(new String(new int[]{128282}, 0, 1));
        list.add(new String(new int[]{128283}, 0, 1));
        list.add(new String(new int[]{128284}, 0, 1));
        list.add(new String(new int[]{128285}, 0, 1));
        list.add(new String(new int[]{128720}, 0, 1));
        list.add(new String(new int[]{9883}, 0, 1));
        list.add(new String(new int[]{128329}, 0, 1));
        list.add(new String(new int[]{10017}, 0, 1));
        list.add(new String(new int[]{9784}, 0, 1));
        list.add(new String(new int[]{9775}, 0, 1));
        list.add(new String(new int[]{10013}, 0, 1));
        list.add(new String(new int[]{9766}, 0, 1));
        list.add(new String(new int[]{9770}, 0, 1));
        list.add(new String(new int[]{9774}, 0, 1));
        list.add(new String(new int[]{128334}, 0, 1));
        list.add(new String(new int[]{128303}, 0, 1));
        list.add(new String(new int[]{9800}, 0, 1));
        list.add(new String(new int[]{9801}, 0, 1));
        list.add(new String(new int[]{9802}, 0, 1));
        list.add(new String(new int[]{9803}, 0, 1));
        list.add(new String(new int[]{9804}, 0, 1));
        list.add(new String(new int[]{9805}, 0, 1));
        list.add(new String(new int[]{9806}, 0, 1));
        list.add(new String(new int[]{9807}, 0, 1));
        list.add(new String(new int[]{9808}, 0, 1));
        list.add(new String(new int[]{9809}, 0, 1));
        list.add(new String(new int[]{9810}, 0, 1));
        list.add(new String(new int[]{9811}, 0, 1));
        list.add(new String(new int[]{9934}, 0, 1));
        list.add(new String(new int[]{128256}, 0, 1));
        list.add(new String(new int[]{128257}, 0, 1));
        list.add(new String(new int[]{128258}, 0, 1));
        list.add(new String(new int[]{9654}, 0, 1));
        list.add(new String(new int[]{9193}, 0, 1));
        list.add(new String(new int[]{9197}, 0, 1));
        list.add(new String(new int[]{9199}, 0, 1));
        list.add(new String(new int[]{9664}, 0, 1));
        list.add(new String(new int[]{9194}, 0, 1));
        list.add(new String(new int[]{9198}, 0, 1));
        list.add(new String(new int[]{128316}, 0, 1));
        list.add(new String(new int[]{9195}, 0, 1));
        list.add(new String(new int[]{128317}, 0, 1));
        list.add(new String(new int[]{9196}, 0, 1));
        list.add(new String(new int[]{9208}, 0, 1));
        list.add(new String(new int[]{9209}, 0, 1));
        list.add(new String(new int[]{9210}, 0, 1));
        list.add(new String(new int[]{9167}, 0, 1));
        list.add(new String(new int[]{127910}, 0, 1));
        list.add(new String(new int[]{128261}, 0, 1));
        list.add(new String(new int[]{128262}, 0, 1));
        list.add(new String(new int[]{128246}, 0, 1));
        list.add(new String(new int[]{128243}, 0, 1));
        list.add(new String(new int[]{128244}, 0, 1));
        list.add(new String(new int[]{9851}, 0, 1));
        list.add(new String(new int[]{128219}, 0, 1));
        list.add(new String(new int[]{9884}, 0, 1));
        list.add(new String(new int[]{128304}, 0, 1));
        list.add(new String(new int[]{128305}, 0, 1));
        list.add(new String(new int[]{11093}, 0, 1));
        list.add(new String(new int[]{9989}, 0, 1));
        list.add(new String(new int[]{9745}, 0, 1));
        list.add(new String(new int[]{IMediaPlayer.MEDIA_INFO_VIDEO_DECODED_START}, 0, 1));
        list.add(new String(new int[]{IMediaPlayer.MEDIA_INFO_FIND_STREAM_INFO}, 0, 1));
        list.add(new String(new int[]{10060}, 0, 1));
        list.add(new String(new int[]{10062}, 0, 1));
        list.add(new String(new int[]{10133}, 0, 1));
        list.add(new String(new int[]{10134}, 0, 1));
        list.add(new String(new int[]{10135}, 0, 1));
        list.add(new String(new int[]{10160}, 0, 1));
        list.add(new String(new int[]{10175}, 0, 1));
        list.add(new String(new int[]{12349}, 0, 1));
        list.add(new String(new int[]{10035}, 0, 1));
        list.add(new String(new int[]{10036}, 0, 1));
        list.add(new String(new int[]{10055}, 0, 1));
        list.add(new String(new int[]{8252}, 0, 1));
        list.add(new String(new int[]{8265}, 0, 1));
        list.add(new String(new int[]{10067}, 0, 1));
        list.add(new String(new int[]{10068}, 0, 1));
        list.add(new String(new int[]{10069}, 0, 1));
        list.add(new String(new int[]{10071}, 0, 1));
        list.add(new String(new int[]{12336}, 0, 1));
        list.add(new String(new int[]{169}, 0, 1));
        list.add(new String(new int[]{174}, 0, 1));
        list.add(new String(new int[]{8482}, 0, 1));
        list.add(new String(new int[]{35, 8419}, 0, 2));
        list.add(new String(new int[]{42, 8419}, 0, 2));
        list.add(new String(new int[]{48, 8419}, 0, 2));
        list.add(new String(new int[]{49, 8419}, 0, 2));
        list.add(new String(new int[]{50, 8419}, 0, 2));
        list.add(new String(new int[]{51, 8419}, 0, 2));
        list.add(new String(new int[]{52, 8419}, 0, 2));
        list.add(new String(new int[]{53, 8419}, 0, 2));
        list.add(new String(new int[]{54, 8419}, 0, 2));
        list.add(new String(new int[]{55, 8419}, 0, 2));
        list.add(new String(new int[]{56, 8419}, 0, 2));
        list.add(new String(new int[]{57, 8419}, 0, 2));
        list.add(new String(new int[]{128287}, 0, 1));
        list.add(new String(new int[]{128175}, 0, 1));
        list.add(new String(new int[]{128288}, 0, 1));
        list.add(new String(new int[]{128289}, 0, 1));
        list.add(new String(new int[]{128290}, 0, 1));
        list.add(new String(new int[]{128291}, 0, 1));
        list.add(new String(new int[]{128292}, 0, 1));
        list.add(new String(new int[]{127344}, 0, 1));
        list.add(new String(new int[]{127374}, 0, 1));
        list.add(new String(new int[]{127345}, 0, 1));
        list.add(new String(new int[]{127377}, 0, 1));
        list.add(new String(new int[]{127378}, 0, 1));
        list.add(new String(new int[]{127379}, 0, 1));
        list.add(new String(new int[]{8505}, 0, 1));
        list.add(new String(new int[]{127380}, 0, 1));
        list.add(new String(new int[]{9410}, 0, 1));
        list.add(new String(new int[]{127381}, 0, 1));
        list.add(new String(new int[]{127382}, 0, 1));
        list.add(new String(new int[]{127358}, 0, 1));
        list.add(new String(new int[]{127383}, 0, 1));
        list.add(new String(new int[]{127359}, 0, 1));
        list.add(new String(new int[]{127384}, 0, 1));
        list.add(new String(new int[]{127385}, 0, 1));
        list.add(new String(new int[]{127386}, 0, 1));
        list.add(new String(new int[]{127489}, 0, 1));
        list.add(new String(new int[]{127490}, 0, 1));
        list.add(new String(new int[]{127543}, 0, 1));
        list.add(new String(new int[]{127542}, 0, 1));
        list.add(new String(new int[]{127535}, 0, 1));
        list.add(new String(new int[]{127568}, 0, 1));
        list.add(new String(new int[]{127545}, 0, 1));
        list.add(new String(new int[]{127514}, 0, 1));
        list.add(new String(new int[]{127538}, 0, 1));
        list.add(new String(new int[]{127569}, 0, 1));
        list.add(new String(new int[]{127544}, 0, 1));
        list.add(new String(new int[]{127540}, 0, 1));
        list.add(new String(new int[]{127539}, 0, 1));
        list.add(new String(new int[]{12951}, 0, 1));
        list.add(new String(new int[]{12953}, 0, 1));
        list.add(new String(new int[]{127546}, 0, 1));
        list.add(new String(new int[]{127541}, 0, 1));
        list.add(new String(new int[]{9642}, 0, 1));
        list.add(new String(new int[]{9643}, 0, 1));
        list.add(new String(new int[]{9723}, 0, 1));
        list.add(new String(new int[]{9724}, 0, 1));
        list.add(new String(new int[]{9725}, 0, 1));
        list.add(new String(new int[]{9726}, 0, 1));
        list.add(new String(new int[]{11035}, 0, 1));
        list.add(new String(new int[]{11036}, 0, 1));
        list.add(new String(new int[]{128310}, 0, 1));
        list.add(new String(new int[]{128311}, 0, 1));
        list.add(new String(new int[]{128312}, 0, 1));
        list.add(new String(new int[]{128313}, 0, 1));
        list.add(new String(new int[]{128314}, 0, 1));
        list.add(new String(new int[]{128315}, 0, 1));
        list.add(new String(new int[]{128160}, 0, 1));
        list.add(new String(new int[]{128280}, 0, 1));
        list.add(new String(new int[]{128306}, 0, 1));
        list.add(new String(new int[]{128307}, 0, 1));
        list.add(new String(new int[]{9898}, 0, 1));
        list.add(new String(new int[]{9899}, 0, 1));
        list.add(new String(new int[]{128308}, 0, 1));
        list.add(new String(new int[]{128309}, 0, 1));
        list.add(new String(new int[]{127937}, 0, 1));
        list.add(new String(new int[]{128681}, 0, 1));
        list.add(new String(new int[]{127884}, 0, 1));
        list.add(new String(new int[]{127988}, 0, 1));
        list.add(new String(new int[]{127987}, 0, 1));
        list.add(new String(new int[]{127987, 127752}, 0, 2));
        list.add(new String(new int[]{127462, 127464}, 0, 2));
        list.add(new String(new int[]{127462, 127465}, 0, 2));
        list.add(new String(new int[]{127462, 127466}, 0, 2));
        list.add(new String(new int[]{127462, 127467}, 0, 2));
        list.add(new String(new int[]{127462, 127468}, 0, 2));
        list.add(new String(new int[]{127462, 127470}, 0, 2));
        list.add(new String(new int[]{127462, 127473}, 0, 2));
        list.add(new String(new int[]{127462, 127474}, 0, 2));
        list.add(new String(new int[]{127462, 127476}, 0, 2));
        list.add(new String(new int[]{127462, 127478}, 0, 2));
        list.add(new String(new int[]{127462, 127479}, 0, 2));
        list.add(new String(new int[]{127462, 127480}, 0, 2));
        list.add(new String(new int[]{127462, 127481}, 0, 2));
        list.add(new String(new int[]{127462, 127482}, 0, 2));
        list.add(new String(new int[]{127462, 127484}, 0, 2));
        list.add(new String(new int[]{127462, 127485}, 0, 2));
        list.add(new String(new int[]{127462, 127487}, 0, 2));
        list.add(new String(new int[]{127463, 127462}, 0, 2));
        list.add(new String(new int[]{127463, 127463}, 0, 2));
        list.add(new String(new int[]{127463, 127465}, 0, 2));
        list.add(new String(new int[]{127463, 127466}, 0, 2));
        list.add(new String(new int[]{127463, 127467}, 0, 2));
        list.add(new String(new int[]{127463, 127468}, 0, 2));
        list.add(new String(new int[]{127463, 127469}, 0, 2));
        list.add(new String(new int[]{127463, 127470}, 0, 2));
        list.add(new String(new int[]{127463, 127471}, 0, 2));
        list.add(new String(new int[]{127463, 127473}, 0, 2));
        list.add(new String(new int[]{127463, 127474}, 0, 2));
        list.add(new String(new int[]{127463, 127475}, 0, 2));
        list.add(new String(new int[]{127463, 127476}, 0, 2));
        list.add(new String(new int[]{127463, 127478}, 0, 2));
        list.add(new String(new int[]{127463, 127479}, 0, 2));
        list.add(new String(new int[]{127463, 127480}, 0, 2));
        list.add(new String(new int[]{127463, 127481}, 0, 2));
        list.add(new String(new int[]{127463, 127483}, 0, 2));
        list.add(new String(new int[]{127463, 127484}, 0, 2));
        list.add(new String(new int[]{127463, 127486}, 0, 2));
        list.add(new String(new int[]{127463, 127487}, 0, 2));
        list.add(new String(new int[]{127464, 127462}, 0, 2));
        list.add(new String(new int[]{127464, 127464}, 0, 2));
        list.add(new String(new int[]{127464, 127465}, 0, 2));
        list.add(new String(new int[]{127464, 127467}, 0, 2));
        list.add(new String(new int[]{127464, 127468}, 0, 2));
        list.add(new String(new int[]{127464, 127469}, 0, 2));
        list.add(new String(new int[]{127464, 127470}, 0, 2));
        list.add(new String(new int[]{127464, 127472}, 0, 2));
        list.add(new String(new int[]{127464, 127473}, 0, 2));
        list.add(new String(new int[]{127464, 127474}, 0, 2));
        list.add(new String(new int[]{127464, 127475}, 0, 2));
        list.add(new String(new int[]{127464, 127476}, 0, 2));
        list.add(new String(new int[]{127464, 127477}, 0, 2));
        list.add(new String(new int[]{127464, 127479}, 0, 2));
        list.add(new String(new int[]{127464, 127482}, 0, 2));
        list.add(new String(new int[]{127464, 127483}, 0, 2));
        list.add(new String(new int[]{127464, 127484}, 0, 2));
        list.add(new String(new int[]{127464, 127485}, 0, 2));
        list.add(new String(new int[]{127464, 127486}, 0, 2));
        list.add(new String(new int[]{127464, 127487}, 0, 2));
        list.add(new String(new int[]{127465, 127466}, 0, 2));
        list.add(new String(new int[]{127465, 127468}, 0, 2));
        list.add(new String(new int[]{127465, 127471}, 0, 2));
        list.add(new String(new int[]{127465, 127472}, 0, 2));
        list.add(new String(new int[]{127465, 127474}, 0, 2));
        list.add(new String(new int[]{127465, 127476}, 0, 2));
        list.add(new String(new int[]{127465, 127487}, 0, 2));
        list.add(new String(new int[]{127466, 127462}, 0, 2));
        list.add(new String(new int[]{127466, 127464}, 0, 2));
        list.add(new String(new int[]{127466, 127466}, 0, 2));
        list.add(new String(new int[]{127466, 127468}, 0, 2));
        list.add(new String(new int[]{127466, 127469}, 0, 2));
        list.add(new String(new int[]{127466, 127479}, 0, 2));
        list.add(new String(new int[]{127466, 127480}, 0, 2));
        list.add(new String(new int[]{127466, 127481}, 0, 2));
        list.add(new String(new int[]{127466, 127482}, 0, 2));
        list.add(new String(new int[]{127467, 127470}, 0, 2));
        list.add(new String(new int[]{127467, 127471}, 0, 2));
        list.add(new String(new int[]{127467, 127472}, 0, 2));
        list.add(new String(new int[]{127467, 127474}, 0, 2));
        list.add(new String(new int[]{127467, 127476}, 0, 2));
        list.add(new String(new int[]{127467, 127479}, 0, 2));
        list.add(new String(new int[]{127468, 127462}, 0, 2));
        list.add(new String(new int[]{127468, 127463}, 0, 2));
        list.add(new String(new int[]{127468, 127465}, 0, 2));
        list.add(new String(new int[]{127468, 127466}, 0, 2));
        list.add(new String(new int[]{127468, 127467}, 0, 2));
        list.add(new String(new int[]{127468, 127468}, 0, 2));
        list.add(new String(new int[]{127468, 127469}, 0, 2));
        list.add(new String(new int[]{127468, 127470}, 0, 2));
        list.add(new String(new int[]{127468, 127473}, 0, 2));
        list.add(new String(new int[]{127468, 127474}, 0, 2));
        list.add(new String(new int[]{127468, 127475}, 0, 2));
        list.add(new String(new int[]{127468, 127477}, 0, 2));
        list.add(new String(new int[]{127468, 127478}, 0, 2));
        list.add(new String(new int[]{127468, 127479}, 0, 2));
        list.add(new String(new int[]{127468, 127480}, 0, 2));
        list.add(new String(new int[]{127468, 127481}, 0, 2));
        list.add(new String(new int[]{127468, 127482}, 0, 2));
        list.add(new String(new int[]{127468, 127484}, 0, 2));
        list.add(new String(new int[]{127468, 127486}, 0, 2));
        list.add(new String(new int[]{127469, 127472}, 0, 2));
        list.add(new String(new int[]{127469, 127474}, 0, 2));
        list.add(new String(new int[]{127469, 127475}, 0, 2));
        list.add(new String(new int[]{127469, 127479}, 0, 2));
        list.add(new String(new int[]{127469, 127481}, 0, 2));
        list.add(new String(new int[]{127469, 127482}, 0, 2));
        list.add(new String(new int[]{127470, 127464}, 0, 2));
        list.add(new String(new int[]{127470, 127465}, 0, 2));
        list.add(new String(new int[]{127470, 127466}, 0, 2));
        list.add(new String(new int[]{127470, 127473}, 0, 2));
        list.add(new String(new int[]{127470, 127474}, 0, 2));
        list.add(new String(new int[]{127470, 127475}, 0, 2));
        list.add(new String(new int[]{127470, 127476}, 0, 2));
        list.add(new String(new int[]{127470, 127478}, 0, 2));
        list.add(new String(new int[]{127470, 127479}, 0, 2));
        list.add(new String(new int[]{127470, 127480}, 0, 2));
        list.add(new String(new int[]{127470, 127481}, 0, 2));
        list.add(new String(new int[]{127471, 127466}, 0, 2));
        list.add(new String(new int[]{127471, 127474}, 0, 2));
        list.add(new String(new int[]{127471, 127476}, 0, 2));
        list.add(new String(new int[]{127471, 127477}, 0, 2));
        list.add(new String(new int[]{127472, 127466}, 0, 2));
        list.add(new String(new int[]{127472, 127468}, 0, 2));
        list.add(new String(new int[]{127472, 127469}, 0, 2));
        list.add(new String(new int[]{127472, 127470}, 0, 2));
        list.add(new String(new int[]{127472, 127474}, 0, 2));
        list.add(new String(new int[]{127472, 127475}, 0, 2));
        list.add(new String(new int[]{127472, 127477}, 0, 2));
        list.add(new String(new int[]{127472, 127479}, 0, 2));
        list.add(new String(new int[]{127472, 127484}, 0, 2));
        list.add(new String(new int[]{127472, 127486}, 0, 2));
        list.add(new String(new int[]{127472, 127487}, 0, 2));
        list.add(new String(new int[]{127473, 127462}, 0, 2));
        list.add(new String(new int[]{127473, 127463}, 0, 2));
        list.add(new String(new int[]{127473, 127464}, 0, 2));
        list.add(new String(new int[]{127473, 127470}, 0, 2));
        list.add(new String(new int[]{127473, 127472}, 0, 2));
        list.add(new String(new int[]{127473, 127479}, 0, 2));
        list.add(new String(new int[]{127473, 127480}, 0, 2));
        list.add(new String(new int[]{127473, 127481}, 0, 2));
        list.add(new String(new int[]{127473, 127482}, 0, 2));
        list.add(new String(new int[]{127473, 127483}, 0, 2));
        list.add(new String(new int[]{127473, 127486}, 0, 2));
        list.add(new String(new int[]{127474, 127462}, 0, 2));
        list.add(new String(new int[]{127474, 127464}, 0, 2));
        list.add(new String(new int[]{127474, 127465}, 0, 2));
        list.add(new String(new int[]{127474, 127466}, 0, 2));
        list.add(new String(new int[]{127474, 127467}, 0, 2));
        list.add(new String(new int[]{127474, 127468}, 0, 2));
        list.add(new String(new int[]{127474, 127469}, 0, 2));
        list.add(new String(new int[]{127474, 127472}, 0, 2));
        list.add(new String(new int[]{127474, 127473}, 0, 2));
        list.add(new String(new int[]{127474, 127474}, 0, 2));
        list.add(new String(new int[]{127474, 127475}, 0, 2));
        list.add(new String(new int[]{127474, 127476}, 0, 2));
        list.add(new String(new int[]{127474, 127477}, 0, 2));
        list.add(new String(new int[]{127474, 127478}, 0, 2));
        list.add(new String(new int[]{127474, 127479}, 0, 2));
        list.add(new String(new int[]{127474, 127480}, 0, 2));
        list.add(new String(new int[]{127474, 127481}, 0, 2));
        list.add(new String(new int[]{127474, 127482}, 0, 2));
        list.add(new String(new int[]{127474, 127483}, 0, 2));
        list.add(new String(new int[]{127474, 127484}, 0, 2));
        list.add(new String(new int[]{127474, 127485}, 0, 2));
        list.add(new String(new int[]{127474, 127486}, 0, 2));
        list.add(new String(new int[]{127474, 127487}, 0, 2));
        list.add(new String(new int[]{127475, 127462}, 0, 2));
        list.add(new String(new int[]{127475, 127464}, 0, 2));
        list.add(new String(new int[]{127475, 127466}, 0, 2));
        list.add(new String(new int[]{127475, 127467}, 0, 2));
        list.add(new String(new int[]{127475, 127468}, 0, 2));
        list.add(new String(new int[]{127475, 127470}, 0, 2));
        list.add(new String(new int[]{127475, 127473}, 0, 2));
        list.add(new String(new int[]{127475, 127476}, 0, 2));
        list.add(new String(new int[]{127475, 127477}, 0, 2));
        list.add(new String(new int[]{127475, 127479}, 0, 2));
        list.add(new String(new int[]{127475, 127482}, 0, 2));
        list.add(new String(new int[]{127475, 127487}, 0, 2));
        list.add(new String(new int[]{127476, 127474}, 0, 2));
        list.add(new String(new int[]{127477, 127462}, 0, 2));
        list.add(new String(new int[]{127477, 127466}, 0, 2));
        list.add(new String(new int[]{127477, 127467}, 0, 2));
        list.add(new String(new int[]{127477, 127468}, 0, 2));
        list.add(new String(new int[]{127477, 127469}, 0, 2));
        list.add(new String(new int[]{127477, 127472}, 0, 2));
        list.add(new String(new int[]{127477, 127473}, 0, 2));
        list.add(new String(new int[]{127477, 127474}, 0, 2));
        list.add(new String(new int[]{127477, 127475}, 0, 2));
        list.add(new String(new int[]{127477, 127479}, 0, 2));
        list.add(new String(new int[]{127477, 127480}, 0, 2));
        list.add(new String(new int[]{127477, 127481}, 0, 2));
        list.add(new String(new int[]{127477, 127484}, 0, 2));
        list.add(new String(new int[]{127477, 127486}, 0, 2));
        list.add(new String(new int[]{127478, 127462}, 0, 2));
        list.add(new String(new int[]{127479, 127466}, 0, 2));
        list.add(new String(new int[]{127479, 127476}, 0, 2));
        list.add(new String(new int[]{127479, 127480}, 0, 2));
        list.add(new String(new int[]{127479, 127482}, 0, 2));
        list.add(new String(new int[]{127479, 127484}, 0, 2));
        list.add(new String(new int[]{127480, 127462}, 0, 2));
        list.add(new String(new int[]{127480, 127463}, 0, 2));
        list.add(new String(new int[]{127480, 127464}, 0, 2));
        list.add(new String(new int[]{127480, 127465}, 0, 2));
        list.add(new String(new int[]{127480, 127466}, 0, 2));
        list.add(new String(new int[]{127480, 127468}, 0, 2));
        list.add(new String(new int[]{127480, 127469}, 0, 2));
        list.add(new String(new int[]{127480, 127470}, 0, 2));
        list.add(new String(new int[]{127480, 127471}, 0, 2));
        list.add(new String(new int[]{127480, 127472}, 0, 2));
        list.add(new String(new int[]{127480, 127473}, 0, 2));
        list.add(new String(new int[]{127480, 127474}, 0, 2));
        list.add(new String(new int[]{127480, 127475}, 0, 2));
        list.add(new String(new int[]{127480, 127476}, 0, 2));
        list.add(new String(new int[]{127480, 127479}, 0, 2));
        list.add(new String(new int[]{127480, 127480}, 0, 2));
        list.add(new String(new int[]{127480, 127481}, 0, 2));
        list.add(new String(new int[]{127480, 127483}, 0, 2));
        list.add(new String(new int[]{127480, 127485}, 0, 2));
        list.add(new String(new int[]{127480, 127486}, 0, 2));
        list.add(new String(new int[]{127480, 127487}, 0, 2));
        list.add(new String(new int[]{127481, 127462}, 0, 2));
        list.add(new String(new int[]{127481, 127464}, 0, 2));
        list.add(new String(new int[]{127481, 127465}, 0, 2));
        list.add(new String(new int[]{127481, 127467}, 0, 2));
        list.add(new String(new int[]{127481, 127468}, 0, 2));
        list.add(new String(new int[]{127481, 127469}, 0, 2));
        list.add(new String(new int[]{127481, 127471}, 0, 2));
        list.add(new String(new int[]{127481, 127472}, 0, 2));
        list.add(new String(new int[]{127481, 127473}, 0, 2));
        list.add(new String(new int[]{127481, 127474}, 0, 2));
        list.add(new String(new int[]{127481, 127475}, 0, 2));
        list.add(new String(new int[]{127481, 127476}, 0, 2));
        list.add(new String(new int[]{127481, 127479}, 0, 2));
        list.add(new String(new int[]{127481, 127481}, 0, 2));
        list.add(new String(new int[]{127481, 127483}, 0, 2));
        list.add(new String(new int[]{127481, 127484}, 0, 2));
        list.add(new String(new int[]{127481, 127487}, 0, 2));
        list.add(new String(new int[]{127482, 127462}, 0, 2));
        list.add(new String(new int[]{127482, 127468}, 0, 2));
        list.add(new String(new int[]{127482, 127474}, 0, 2));
        list.add(new String(new int[]{127482, 127480}, 0, 2));
        list.add(new String(new int[]{127482, 127486}, 0, 2));
        list.add(new String(new int[]{127482, 127487}, 0, 2));
        list.add(new String(new int[]{127483, 127462}, 0, 2));
        list.add(new String(new int[]{127483, 127464}, 0, 2));
        list.add(new String(new int[]{127483, 127466}, 0, 2));
        list.add(new String(new int[]{127483, 127468}, 0, 2));
        list.add(new String(new int[]{127483, 127470}, 0, 2));
        list.add(new String(new int[]{127483, 127475}, 0, 2));
        list.add(new String(new int[]{127483, 127482}, 0, 2));
        list.add(new String(new int[]{127484, 127467}, 0, 2));
        list.add(new String(new int[]{127484, 127480}, 0, 2));
        list.add(new String(new int[]{127485, 127472}, 0, 2));
        list.add(new String(new int[]{127486, 127466}, 0, 2));
        list.add(new String(new int[]{127486, 127481}, 0, 2));
        list.add(new String(new int[]{127487, 127462}, 0, 2));
        list.add(new String(new int[]{127487, 127474}, 0, 2));
        list.add(new String(new int[]{127487, 127484}, 0, 2));
        list.add(new String(new int[]{127487}, 0, 1));
        list.add(new String(new int[]{127486}, 0, 1));
        list.add(new String(new int[]{127485}, 0, 1));
        list.add(new String(new int[]{127484}, 0, 1));
        list.add(new String(new int[]{127483}, 0, 1));
        list.add(new String(new int[]{127482}, 0, 1));
        list.add(new String(new int[]{127481}, 0, 1));
        list.add(new String(new int[]{127480}, 0, 1));
        list.add(new String(new int[]{127479}, 0, 1));
        list.add(new String(new int[]{127478}, 0, 1));
        list.add(new String(new int[]{127477}, 0, 1));
        list.add(new String(new int[]{127476}, 0, 1));
        list.add(new String(new int[]{127475}, 0, 1));
        list.add(new String(new int[]{127474}, 0, 1));
        list.add(new String(new int[]{127473}, 0, 1));
        list.add(new String(new int[]{127472}, 0, 1));
        list.add(new String(new int[]{127471}, 0, 1));
        list.add(new String(new int[]{127470}, 0, 1));
        list.add(new String(new int[]{127469}, 0, 1));
        list.add(new String(new int[]{127468}, 0, 1));
        list.add(new String(new int[]{127467}, 0, 1));
        list.add(new String(new int[]{127466}, 0, 1));
        list.add(new String(new int[]{127465}, 0, 1));
        list.add(new String(new int[]{127464}, 0, 1));
        list.add(new String(new int[]{127463}, 0, 1));
        list.add(new String(new int[]{127462}, 0, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void waitingRequest(String str) {
        this.waitingRequestTaskName = str;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_mood_list, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        boolean z;
        super.onCreate(bundle);
        this.source = getStringParam(CommentListFragment.COMMENT_KEY_SOURCE);
        setTitle((CharSequence) null);
        this.packageUtils = new PackageUtils(getContext());
        this.account = (AccountService) getService("account");
        this.prefs = this.account.getPrefs();
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode(this.prefs.getString(KEY_MISSION_SET, null));
        this.videoManager = (VideoManager) getService("videoManager");
        Iterator<String> it = missionKeyList.iterator();
        while (true) {
            z = false;
            if (!it.hasNext()) {
                z = true;
                break;
            } else if (TextUtils.isEmpty(JacksonUtils.nodeString(objectNodeCreateObjectNode, it.next(), KEY_COMPLETED_TIME))) {
                break;
            }
        }
        if (z) {
            return;
        }
        sendMissionSetRequest();
    }

    private void sendMissionSetRequest() {
        if (this.account.hasAccount()) {
            ((ApiService) getService("api")).exec(ApiRequest.builder().global().path("account/" + this.account.getUserId() + "/mission-set").build(), new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.monetization.sticker.mood.MoodBaseListFragment.4
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    JsonNode jsonNodeNodePath = JacksonUtils.nodePath(json(), MoodBaseListFragment.KEY_MISSION_SET);
                    if (jsonNodeNodePath != null) {
                        MoodBaseListFragment.this.prefs.edit().putString(MoodBaseListFragment.KEY_MISSION_SET, jsonNodeNodePath.toString()).apply();
                        MoodBaseListFragment.this.updateLockViews();
                    }
                }
            });
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected void onLoginResult(boolean z, Intent intent) {
        sendMissionSetRequest();
    }

    public void setMood(String str) {
        this.mood = str;
        updateListAdapter();
    }

    public void setIsEditorTheme(boolean z) {
        this.editorTheme = z;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.hoverLayout = (ViewGroup) view.findViewById(R.id.hover_layout);
        this.checkWindowVisibilityView = (CheckWindowChangeView) view.findViewById(R.id.check_window_change);
        this.checkWindowVisibilityView.setOnWindowVisibilityChangedListener(new CheckWindowChangeView.onWindowVisibilityChangedListener() { // from class: com.narvii.monetization.sticker.mood.MoodBaseListFragment.5
            @Override // com.narvii.widget.CheckWindowChangeView.onWindowVisibilityChangedListener
            public void onChanged(int i) {
                if (i == 8) {
                    MoodBaseListFragment moodBaseListFragment = MoodBaseListFragment.this;
                    String str = moodBaseListFragment.waitingRequestTaskName;
                    if (str != null) {
                        moodBaseListFragment.sendUnlockRequest(str);
                    }
                    MoodBaseListFragment.this.waitingRequestTaskName = null;
                }
            }
        });
        updateLockViews();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        if (listView instanceof NVListView) {
            ((NVListView) listView).addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.monetization.sticker.mood.MoodBaseListFragment.6
                @Override // android.widget.AbsListView.OnScrollListener
                public void onScrollStateChanged(AbsListView absListView, int i) {
                }

                @Override // android.widget.AbsListView.OnScrollListener
                public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                    View childAt;
                    absListView.getChildAt(0);
                    int childCount = absListView.getChildCount();
                    int i4 = 0;
                    while (true) {
                        if (i4 >= childCount) {
                            childAt = null;
                            break;
                        }
                        childAt = absListView.getChildAt(i4);
                        if (childAt != null && childAt.getTag() != null) {
                            break;
                        } else {
                            i4++;
                        }
                    }
                    if (childAt != null) {
                        int top = (childAt.getTop() + childAt.getBottom()) / 2;
                        int top2 = (absListView.getTop() + absListView.getBottom()) / 2;
                        View viewFindViewById = childAt.findViewById(R.id.lock_layout);
                        if (top < top2) {
                            if (viewFindViewById != null) {
                                viewFindViewById.setVisibility(8);
                            }
                            MoodBaseListFragment.this.showHoverView();
                            return;
                        } else {
                            if (viewFindViewById != null) {
                                viewFindViewById.setVisibility(0);
                            }
                            MoodBaseListFragment.this.removeHoverView();
                            return;
                        }
                    }
                    int size = (MoodBaseListFragment.this.lockInfos.size() + 3) - 1;
                    if (i2 + i < size) {
                        MoodBaseListFragment.this.removeHoverView();
                        return;
                    }
                    if (i > size) {
                        if (MoodBaseListFragment.this.lockInfos.get(r5.size() - 1).locked) {
                            MoodBaseListFragment.this.showHoverView();
                        } else {
                            MoodBaseListFragment.this.removeHoverView();
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeHoverView() {
        ViewGroup viewGroup = this.hoverLayout;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showHoverView() {
        ViewGroup viewGroup;
        if (getTaskAdapter() == null || (viewGroup = this.hoverLayout) == null || viewGroup.getChildCount() != 0) {
            return;
        }
        View view = getTaskAdapter().getView(this.lockInfos.size() - 1, null, this.hoverLayout);
        view.findViewById(R.id.grid).setVisibility(4);
        view.findViewById(R.id.bg).setVisibility(4);
        this.hoverLayout.addView(view);
        Utils.handler.removeCallbacks(this.hoverRequestLayoutRunnable);
        Utils.handler.post(this.hoverRequestLayoutRunnable);
    }

    protected TaskAdapter getTaskAdapter() {
        return this.taskAdapter;
    }

    protected MergeAdapter getMoodBaseAdapter() {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        int iMin = (int) (Math.min(Utils.dpToPx(getContext(), 400.0f), Utils.getScreenWidth(getContext())) * 0.9f * 0.25f * 0.075f);
        mergeAdapter.addAdapter(new MarginAdapter(this, iMin));
        mergeAdapter.addAdapter(new MoodAllTopAdapter(this));
        this.taskAdapter = new TaskAdapter(this);
        mergeAdapter.addAdapter(this.taskAdapter);
        mergeAdapter.addAdapter(new MarginAdapter(this, iMin));
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.waitingRequestTaskName = null;
    }

    class MoodAllTopAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public MoodAllTopAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.all_mood_top_item, viewGroup, view);
            MoodBaseListFragment.this.fillMoods(null, (GridLayout) viewCreateView.findViewById(R.id.top_grid), 0, 8);
            return viewCreateView;
        }
    }

    class TaskAdapter extends NVAdapter implements HoverAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public TaskAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (int) Math.ceil(((MoodBaseListFragment.list.size() - 8) * 1.0f) / 12.0f);
        }

        public LockInfo getLockInfo(int i) {
            ArrayList<LockInfo> arrayList = MoodBaseListFragment.this.lockInfos;
            if (i >= arrayList.size()) {
                i = MoodBaseListFragment.this.lockInfos.size() - 1;
            }
            return arrayList.get(i);
        }

        public boolean showLockBackground(int i) {
            LockInfo lockInfo = getLockInfo(i);
            return lockInfo != null && lockInfo.locked;
        }

        public boolean showLockViews(int i) {
            LockInfo lockInfo = getLockInfo(i);
            return lockInfo != null && lockInfo.locked && i < MoodBaseListFragment.this.lockInfos.size();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.mood_task_item, viewGroup, view);
            LockInfo lockInfo = getLockInfo(i);
            MoodBaseListFragment.this.fillMoods(lockInfo, (GridLayout) viewCreateView.findViewById(R.id.grid), (i * 12) + 8, 12);
            View viewFindViewById = viewCreateView.findViewById(R.id.lock_layout);
            View viewFindViewById2 = viewCreateView.findViewById(R.id.bg);
            if (showLockBackground(i)) {
                viewFindViewById2.setVisibility(0);
                viewFindViewById2.setOnClickListener(MoodBaseListFragment.this.emptyClickListener);
                if (i >= MoodBaseListFragment.this.lockInfos.size() - 1) {
                    if (i == MoodBaseListFragment.this.lockInfos.size() - 1) {
                        viewFindViewById2.setBackgroundResource(R.drawable.mood_picker_lock_rect_top);
                    } else if (i == getCount() - 1) {
                        viewFindViewById2.setBackgroundResource(R.drawable.mood_picker_lock_rect_bottom);
                    } else {
                        viewFindViewById2.setBackgroundResource(R.drawable.mood_picker_lock_rect_no_corner);
                    }
                } else {
                    viewFindViewById2.setBackgroundResource(R.drawable.mood_picker_lock_rect);
                }
            } else {
                viewFindViewById2.setOnClickListener(null);
                viewFindViewById2.setVisibility(8);
            }
            if (showLockViews(i)) {
                viewFindViewById.setVisibility(0);
                ((NVImageView) viewFindViewById.findViewById(R.id.icon)).setImageResource(lockInfo.iconId);
                ((TextView) viewFindViewById.findViewById(R.id.text)).setText(lockInfo.textId);
                Button button = (Button) viewFindViewById.findViewById(R.id.unlock);
                button.setBackgroundResource(lockInfo.unlockDrawableId);
                button.setOnClickListener(lockInfo.onClickListener);
            } else {
                viewFindViewById.setVisibility(8);
            }
            if (isHover(i) && showLockViews(i)) {
                viewCreateView.setTag(true);
            } else {
                viewCreateView.setTag(null);
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.HoverAdapter
        public boolean isHover(int i) {
            return i == MoodBaseListFragment.this.lockInfos.size() - 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillMoods(LockInfo lockInfo, GridLayout gridLayout, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i + i3;
            String str = i4 < list.size() ? list.get(i4) : null;
            View childAt = gridLayout.getChildAt(i3);
            if (childAt == null) {
                childAt = LayoutInflater.from(getContext()).inflate(this.editorTheme ? R.layout.editor_mood_picker_item : R.layout.mood_picker_item, (ViewGroup) gridLayout, false);
                gridLayout.addView(childAt);
            }
            childAt.getLayoutParams().width = (int) (Utils.getScreenWidth(getContext()) * 0.9f * 0.25f);
            ImageView imageView = (ImageView) childAt.findViewById(R.id.icon);
            if (imageView.getTag() != str) {
                Drawable drawable = imageView.getDrawable();
                imageView.setImageDrawable(null);
                if (drawable instanceof BitmapDrawable) {
                    ((BitmapDrawable) drawable).getBitmap().recycle();
                }
                imageView.setTag(str);
                EmojioneLoader.executor.execute(new EmojioneLoader(str, imageView));
            }
            boolean z = str != null && str.equals(this.mood);
            childAt.setTag(R.id.icon, str);
            childAt.setVisibility(str == null ? 8 : 0);
            childAt.setOnClickListener(this.moodClickListener);
            childAt.setEnabled(isMoodClickable());
            childAt.setSelected(z && !this.editorTheme);
            if (this.editorTheme && str != null) {
                EditorStickerInstallFrameView editorStickerInstallFrameView = (EditorStickerInstallFrameView) childAt.findViewById(R.id.sticker_install_frame);
                if (editorStickerInstallFrameView.getStickerStatus() == 0) {
                    Sticker sticker = new Sticker(str);
                    editorStickerInstallFrameView.setStickerStatus(this.videoManager.obtainInstalledStickerInfo(sticker, sticker.getStickerPath()) != null ? 3 : 1);
                }
                editorStickerInstallFrameView.setStickerSelected(z);
            }
        }
    }

    private abstract class UnlockListener implements View.OnClickListener {
        abstract void onUnlock();

        private UnlockListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!MoodBaseListFragment.this.account.hasAccount()) {
                MoodBaseListFragment.this.ensureLogin(new Intent());
            } else {
                onUnlock();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLockViews() {
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode(this.prefs.getString(KEY_MISSION_SET, null));
        this.lockInfos.clear();
        this.lockInfos.add(new LockInfo(isTaskLocked(objectNodeCreateObjectNode, missionKeyList.get(0)), R.drawable.ic_mood_lock_instagram, R.string.mood_unlock_instagram, R.drawable.mood_picker_unlock_green, new UnlockListener() { // from class: com.narvii.monetization.sticker.mood.MoodBaseListFragment.7
            @Override // com.narvii.monetization.sticker.mood.MoodBaseListFragment.UnlockListener
            void onUnlock() {
                MoodBaseListFragment.this.unlockInstagram();
            }
        }));
        this.lockInfos.add(new LockInfo(isTaskLocked(objectNodeCreateObjectNode, missionKeyList.get(1)), R.drawable.icon_master, R.string.mood_unlock_master, R.drawable.mood_picker_unlock_blue, new UnlockListener() { // from class: com.narvii.monetization.sticker.mood.MoodBaseListFragment.8
            @Override // com.narvii.monetization.sticker.mood.MoodBaseListFragment.UnlockListener
            void onUnlock() {
                MoodBaseListFragment.this.unlockMaster();
            }
        }));
        this.lockInfos.add(new LockInfo(isTaskLocked(objectNodeCreateObjectNode, missionKeyList.get(2)), R.drawable.ic_mood_lock_invite, R.string.mood_unlock_invite, R.drawable.mood_picker_unlock_purple, new UnlockListener() { // from class: com.narvii.monetization.sticker.mood.MoodBaseListFragment.9
            @Override // com.narvii.monetization.sticker.mood.MoodBaseListFragment.UnlockListener
            void onUnlock() {
                MoodBaseListFragment.this.unlockInvite();
            }
        }));
        this.lockInfos.add(new LockInfo(isTaskLocked(objectNodeCreateObjectNode, missionKeyList.get(3)), R.drawable.ic_mood_lock_rate, R.string.mood_unlock_rate, R.drawable.mood_picker_unlock_yellow, new UnlockListener() { // from class: com.narvii.monetization.sticker.mood.MoodBaseListFragment.10
            @Override // com.narvii.monetization.sticker.mood.MoodBaseListFragment.UnlockListener
            void onUnlock() {
                MoodBaseListFragment.this.unlockRate();
            }
        }));
        this.lockInfos.add(new LockInfo(isTaskLocked(objectNodeCreateObjectNode, missionKeyList.get(4)), R.drawable.ic_mood_lock_streak, R.string.mood_unlock_streak, R.drawable.mood_picker_unlock_green_light, new UnlockListener() { // from class: com.narvii.monetization.sticker.mood.MoodBaseListFragment.11
            @Override // com.narvii.monetization.sticker.mood.MoodBaseListFragment.UnlockListener
            void onUnlock() {
                MoodBaseListFragment.this.unlockStreak();
            }
        }));
        updateListAdapter();
        ArrayList<LockInfo> arrayList = this.lockInfos;
        if (arrayList.get(arrayList.size() - 1).locked) {
            return;
        }
        removeHoverView();
    }

    private void updateListAdapter() {
        if (getListAdapter() instanceof BaseAdapter) {
            ((BaseAdapter) getListAdapter()).notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unlockStreak() {
        int i = 0;
        for (int i2 = 0; i2 < this.lockInfos.size() - 1; i2++) {
            if (!this.lockInfos.get(i2).locked) {
                i++;
            }
        }
        NVContext nVContext = Utils.getNVContext(getContext());
        AccountService accountService = (AccountService) nVContext.getService("account");
        boolean z = i == this.lockInfos.size() - 1;
        int consecutiveCheckInDays = accountService.getConsecutiveCheckInDays();
        boolean z2 = consecutiveCheckInDays >= 14;
        if (z && z2) {
            sendUnlockRequest(TASK_STREAK);
            return;
        }
        ArrayList arrayList = new ArrayList();
        UnlockItem unlockItem = new UnlockItem(R.string.mood_unlock_complete_other, (this.lockInfos.size() - 1) - i, R.string.mood_unlock_status_tasks_remaining, z);
        unlockItem.numberZeroStatusId = R.string.task_complete;
        arrayList.add(unlockItem);
        arrayList.add(new UnlockItem(R.string.mood_unlock_achieve_streak, consecutiveCheckInDays, R.string.mood_unlock_status_consecutive_check_in, z2));
        new UnlockLastMoodsDialog(nVContext, arrayList).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unlockRate() {
        RateAppHelper rateAppHelper = new RateAppHelper(Utils.getNVContext(getContext()));
        if (rateAppHelper.hasRated()) {
            sendUnlockRequest(TASK_RATE);
        } else {
            rateAppHelper.setOnRateOrFeedbackListener(new RateAppHelper.OnRateOrFeedbackListener() { // from class: com.narvii.monetization.sticker.mood.MoodBaseListFragment.12
                @Override // com.narvii.rate.RateAppHelper.OnRateOrFeedbackListener
                public void onCall() {
                    MoodBaseListFragment.this.waitingRequest(MoodBaseListFragment.TASK_RATE);
                }
            });
            rateAppHelper.showRateDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unlockInvite() {
        final ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        final ShareLinkHelper shareLinkHelper = new ShareLinkHelper(Utils.getNVContext(getContext()));
        final ShareLink shareLink = new ShareLink();
        shareLinkHelper.setCallbacks(new ShareLinkHelper.ShareCallback() { // from class: com.narvii.monetization.sticker.mood.MoodBaseListFragment.13
            @Override // com.narvii.share.ShareLinkHelper.ShareCallback
            public void onShareFailed(int i) {
            }

            @Override // com.narvii.share.ShareLinkHelper.ShareCallback
            public void onShareSuccessful(int i) {
                MoodBaseListFragment.this.waitingRequest(MoodBaseListFragment.TASK_INVITE);
            }
        });
        View customView = actionSheetDialog.setCustomView(R.layout.mood_unlock_invite_friends);
        shareLink.text = getContext().getString(R.string.mood_unlock_invite_text) + "🙏";
        shareLink.url = getContext().getString(R.string.mood_unlock_invite_link) + " 👉 " + INVITE_URL;
        customView.findViewById(R.id.message_layout).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.mood.MoodBaseListFragment.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                shareLinkHelper.share(shareLink, 2);
                actionSheetDialog.dismiss();
            }
        });
        customView.findViewById(R.id.email_layout).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.mood.MoodBaseListFragment.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                shareLinkHelper.share(shareLink, 1);
                actionSheetDialog.dismiss();
            }
        });
        actionSheetDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unlockMaster() {
        if (!this.packageUtils.isMasterInstalled()) {
            PackageUtils packageUtils = this.packageUtils;
            packageUtils.openGooglePlay(packageUtils.getMasterPackageName());
        } else {
            sendUnlockRequest(TASK_MASTER);
        }
    }

    private String getInstagramUrl() {
        String str;
        NVContext nVContext = Utils.getNVContext(getContext());
        Community community = ((CommunityService) nVContext.getService("community")).getCommunity(((ConfigService) nVContext.getService("config")).getCommunityId());
        String str2 = (community == null || (str = community.primaryLanguage) == null) ? null : instagramUserMap.get(str.toLowerCase(Locale.US));
        if (str2 == null) {
            str2 = DEFAULT_INSTAGRAM_UID;
        }
        return INSTAGRAM_URL_PREFIX + str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unlockInstagram() {
        boolean z;
        if (new PackageUtils(getContext()).isPackageInstalled("com.instagram.android")) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(getInstagramUrl()));
                intent.setPackage("com.instagram.android");
                getContext().startActivity(intent);
                z = true;
            } catch (Exception e) {
                Log.w("fail to launch instagram", e);
            }
        } else {
            z = false;
        }
        if (z) {
            sendUnlockRequest(TASK_INSTAGRAM);
        } else {
            NVToast.makeText(getContext(), R.string.mood_instagram_not_installed, 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendUnlockRequest(final String str) {
        final NVContext nVContext = Utils.getNVContext(getContext());
        AccountService accountService = (AccountService) nVContext.getService("account");
        ((ApiService) nVContext.getService("api")).exec(ApiRequest.builder().global().post().path("/account/" + accountService.getUserId() + "/mission-set").param("missionName", str).param("missionOperation", 1).build(), new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.monetization.sticker.mood.MoodBaseListFragment.16
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) {
            }

            @Override // com.narvii.util.http.ApiJsonResponseListener, com.narvii.util.http.ApiResponseListener
            public ApiResponse parseResponse(ApiRequest apiRequest, int i, List<NameValuePair> list2, byte[] bArr) throws Exception {
                ApiResponse response = super.parseResponse(apiRequest, i, list2, bArr);
                try {
                    Thread.sleep(500L);
                } catch (Exception unused) {
                }
                return response;
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list2, String str2, ApiResponse apiResponse, Throwable th) {
                NVToast.makeText(MoodBaseListFragment.this.getContext(), str2, 0).show();
            }
        });
    }
}
