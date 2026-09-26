package com.narvii.amino.speeddial;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.amino.speeddial.mode.LiveCategory;
import com.narvii.amino.speeddial.mode.SpeedDialResponse;
import com.narvii.app.NVContext;
import com.narvii.chat.hangout.HangoutItem;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.logging.LogUtils;
import com.narvii.model.ChatThread;
import com.narvii.model.PlayList;
import com.narvii.model.PlayListItem;
import com.narvii.model.User;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.widget.HorizontalRecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class SpeedDialRecycleView extends HorizontalRecyclerView {
    private static final int TYPE_FEATURED = 3;
    private static final int TYPE_NORMAL = 2;
    private static final int TYPE_SR = 1;
    private static final int TYPE_VV = 0;
    private LiveItemRecycleAdapter adapter;
    List<ChatThread> featuredChatThreadList;
    private SpeedDialLayout.SpeedDialItemClickListener listener;
    List<ChatThread> liveChatThreadList;
    List<LiveCategory> normalLiveCategoryList;
    NVContext nvContext;
    public HashMap<String, PlayList> playListInThreadList;
    private SpeedDialResponse speedDialResponse;
    public HashMap<String, List<User>> userProfileListInThreadList;
    public HashMap<String, YoutubeWebpTask> webpTasks;
    public HashMap<String, String> webpThumbUrl;

    class LiveItemRecycleAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
            if (i10 == 2) {
                return SpeedDialRecycleView.this.new NormalItemViewHolder(LayoutInflater.from(SpeedDialRecycleView.this.getContext()).inflate(R.layout.item_live_normal_category, viewGroup, false));
            }
            if (i10 != 1 && i10 != 0 && i10 != 3) {
                return null;
            }
            return SpeedDialRecycleView.this.new LiveItemViewHolder(LayoutInflater.from(SpeedDialRecycleView.this.getContext()).inflate(R.layout.chat_speed_dial_item, viewGroup, false));
        }

        LiveItemRecycleAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SpeedDialRecycleView.this.normalLiveCategoryList.size() + SpeedDialRecycleView.this.liveChatThreadList.size() + SpeedDialRecycleView.this.featuredChatThreadList.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            int size = SpeedDialRecycleView.this.featuredChatThreadList.size();
            int size2 = SpeedDialRecycleView.this.liveChatThreadList.size();
            if (i10 < size) {
                return 3;
            }
            if (i10 >= size2 + size) {
                return 2;
            }
            ChatThread chatThread = SpeedDialRecycleView.this.liveChatThreadList.get(i10 - size);
            if (chatThread.getRTCType() == 1 || chatThread.getRTCType() == 3 || chatThread.getRTCType() == 4) {
                return 0;
            }
            return chatThread.getRTCType() == 5 ? 1 : -1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
            int size = SpeedDialRecycleView.this.liveChatThreadList.size() + SpeedDialRecycleView.this.featuredChatThreadList.size();
            if (viewHolder instanceof NormalItemViewHolder) {
                final LiveCategory liveCategory = SpeedDialRecycleView.this.normalLiveCategoryList.get(i10 - size);
                NormalItemViewHolder normalItemViewHolder = (NormalItemViewHolder) viewHolder;
                normalItemViewHolder.normaltemView.updateLiveCategory(liveCategory);
                normalItemViewHolder.normaltemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.speeddial.SpeedDialRecycleView.LiveItemRecycleAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (SpeedDialRecycleView.this.listener != null) {
                            SpeedDialRecycleView.this.listener.onNormalItemClicked(view, liveCategory);
                        }
                    }
                });
                return;
            }
            if (viewHolder instanceof LiveItemViewHolder) {
                HangoutItem hangoutItem = ((LiveItemViewHolder) viewHolder).liveItemView;
                int size2 = SpeedDialRecycleView.this.featuredChatThreadList.size();
                final ChatThread chatThread = i10 < size2 ? SpeedDialRecycleView.this.featuredChatThreadList.get(i10) : SpeedDialRecycleView.this.liveChatThreadList.get(i10 - size2);
                View view = viewHolder.itemView;
                if (view != null) {
                    LogUtils.setAttachedObject(view, chatThread);
                }
                String curThreadPlayingYoutubeUrl = getItemViewType(i10) == 1 ? SpeedDialRecycleView.this.getCurThreadPlayingYoutubeUrl(chatThread) : null;
                HashMap<String, PlayList> map = SpeedDialRecycleView.this.playListInThreadList;
                hangoutItem.setThread(chatThread, map != null ? map.get(chatThread.id()) : null, curThreadPlayingYoutubeUrl);
                hangoutItem.findViewById(R.id.member_count).setBackground(SpeedDialRecycleView.this.getResources().getDrawable(Utils.isRtl() ? R.drawable.chat_item_member_count_background_rtl : R.drawable.chat_item_member_count_background));
                hangoutItem.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.speeddial.SpeedDialRecycleView.LiveItemRecycleAdapter.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (SpeedDialRecycleView.this.listener != null) {
                            SpeedDialRecycleView.this.listener.onLiveItemClicked(view2, chatThread);
                        }
                    }
                });
            }
        }
    }

    class LiveItemViewHolder extends RecyclerView.ViewHolder {
        HangoutItem liveItemView;

        public LiveItemViewHolder(View view) {
            super(view);
            this.liveItemView = (HangoutItem) view.findViewById(R.id.chat_item);
        }
    }

    class NormalItemViewHolder extends RecyclerView.ViewHolder {
        LiveCategoryItemView normaltemView;

        public NormalItemViewHolder(View view) {
            super(view);
            this.normaltemView = (LiveCategoryItemView) view.findViewById(R.id.normal_item);
        }
    }

    class YoutubeWebpTask extends AsyncTask<Void, Void, String> {
        String yVid;

        public YoutubeWebpTask(String str) {
            this.yVid = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(Void... voidArr) {
            try {
                return YoutubeUtils.extractAnimatedWebpUrl(this.yVid);
            } catch (Exception e) {
                Log.w("unable to extract webp " + this.yVid, e);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if (SpeedDialRecycleView.this.webpThumbUrl.containsKey(this.yVid)) {
                return;
            }
            SpeedDialRecycleView.this.webpTasks.remove(this.yVid);
            SpeedDialRecycleView.this.webpThumbUrl.put(this.yVid, str);
            SpeedDialRecycleView speedDialRecycleView = SpeedDialRecycleView.this;
            speedDialRecycleView.updateSpeedDial(speedDialRecycleView.speedDialResponse);
        }
    }

    public SpeedDialRecycleView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCurThreadPlayingYoutubeUrl(ChatThread chatThread) {
        SpeedDialResponse speedDialResponse;
        HashMap<String, PlayList> map;
        PlayList playList;
        PlayListItem currentPlayItem;
        String youtubeVideoIdFromUrl;
        if (chatThread == null || (speedDialResponse = this.speedDialResponse) == null || (map = speedDialResponse.playlistInThreadList) == null || map.get(chatThread.id()) == null || (playList = this.speedDialResponse.playlistInThreadList.get(chatThread.id())) == null || (currentPlayItem = playList.getCurrentPlayItem()) == null || (youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(currentPlayItem.url)) == null) {
            return null;
        }
        return getYoutubeWebpUrl(youtubeVideoIdFromUrl);
    }

    public void removeFakeSrList() {
    }

    public void setSpeedDialItemClickListener(SpeedDialLayout.SpeedDialItemClickListener speedDialItemClickListener) {
        this.listener = speedDialItemClickListener;
    }

    public SpeedDialRecycleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.normalLiveCategoryList = new ArrayList();
        this.liveChatThreadList = new ArrayList();
        this.featuredChatThreadList = new ArrayList();
        this.userProfileListInThreadList = new HashMap<>();
        this.playListInThreadList = new HashMap<>();
        this.webpTasks = new HashMap<>();
        this.webpThumbUrl = new HashMap<>();
        setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        this.nvContext = Utils.getNVContext(context);
        LiveItemRecycleAdapter liveItemRecycleAdapter = new LiveItemRecycleAdapter();
        this.adapter = liveItemRecycleAdapter;
        setAdapter(liveItemRecycleAdapter);
        setItemAnimator(null);
        ViewCompat.J0(this, Utils.isRtl() ? 1 : 0);
    }

    public void addFakeSrList() {
        this.adapter.notifyDataSetChanged();
    }

    public void addFakeVVList() {
        this.adapter.notifyDataSetChanged();
    }

    public int getItemViewCount() {
        LiveItemRecycleAdapter liveItemRecycleAdapter = this.adapter;
        if (liveItemRecycleAdapter == null) {
            return 0;
        }
        return liveItemRecycleAdapter.getItemCount();
    }

    public void updateFeaturedChatList(ChatThread chatThread) {
        ChatThread next;
        if (chatThread == null || chatThread.status == 9) {
            return;
        }
        if (chatThread.featureType() == 5) {
            Iterator<ChatThread> it = this.featuredChatThreadList.iterator();
            do {
                if (!it.hasNext()) {
                    this.featuredChatThreadList.add(0, chatThread);
                    break;
                }
            } while (!it.next().hasEqualId(chatThread));
        } else {
            Iterator<ChatThread> it2 = this.featuredChatThreadList.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!next.hasEqualId(chatThread));
            if (next != null) {
                this.featuredChatThreadList.remove(next);
            }
        }
        LiveItemRecycleAdapter liveItemRecycleAdapter = this.adapter;
        if (liveItemRecycleAdapter != null) {
            liveItemRecycleAdapter.notifyDataSetChanged();
        }
    }

    public void updateSpeedDial(SpeedDialResponse speedDialResponse) {
        if (speedDialResponse == null) {
            this.liveChatThreadList.clear();
            this.featuredChatThreadList.clear();
            this.normalLiveCategoryList.clear();
            LiveItemRecycleAdapter liveItemRecycleAdapter = this.adapter;
            if (liveItemRecycleAdapter != null) {
                liveItemRecycleAdapter.notifyDataSetChanged();
                return;
            }
            return;
        }
        this.speedDialResponse = speedDialResponse;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List<ChatThread> list = speedDialResponse.threadList;
        if (list != null) {
            for (ChatThread chatThread : list) {
                if (chatThread.status != 9 && chatThread.featureType() == 5) {
                    arrayList2.add(chatThread);
                } else if (SignallingChannel.isLegalChannelType(chatThread.getRTCType()) && chatThread.status != 9) {
                    if (chatThread.getRTCType() != 5) {
                        HashMap<String, List<User>> map = speedDialResponse.userProfileListInThreadList;
                        if (map != null && map.containsKey(chatThread.id())) {
                            arrayList.add(chatThread);
                        }
                    } else {
                        arrayList.add(chatThread);
                    }
                }
            }
        }
        ArrayList arrayList3 = new ArrayList();
        List<String> supoortedLiveCategoryList = LiveCategory.getSupoortedLiveCategoryList(this.nvContext);
        List<LiveCategory> list2 = speedDialResponse.liveLayerList;
        if (list2 != null) {
            for (LiveCategory liveCategory : list2) {
                if (LiveCategory.isValidTopicInList(supoortedLiveCategoryList, liveCategory.topic)) {
                    arrayList3.add(liveCategory);
                }
            }
        }
        this.liveChatThreadList.clear();
        this.liveChatThreadList.addAll(arrayList);
        this.featuredChatThreadList.clear();
        this.featuredChatThreadList.addAll(arrayList2);
        this.normalLiveCategoryList.clear();
        if (!this.liveChatThreadList.isEmpty()) {
            this.normalLiveCategoryList.addAll(arrayList3);
        }
        if (speedDialResponse.userProfileListInThreadList != null) {
            this.userProfileListInThreadList.clear();
            this.userProfileListInThreadList.putAll(speedDialResponse.userProfileListInThreadList);
        }
        if (speedDialResponse.playlistInThreadList != null) {
            this.playListInThreadList.clear();
            this.playListInThreadList.putAll(speedDialResponse.playlistInThreadList);
        }
        LiveItemRecycleAdapter liveItemRecycleAdapter2 = this.adapter;
        if (liveItemRecycleAdapter2 != null) {
            liveItemRecycleAdapter2.notifyDataSetChanged();
        }
    }

    public String getYoutubeWebpUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.webpThumbUrl.containsKey(str)) {
            return this.webpThumbUrl.get(str);
        }
        if (this.webpTasks.containsKey(str)) {
            return null;
        }
        YoutubeWebpTask youtubeWebpTask = new YoutubeWebpTask(str);
        this.webpTasks.put(str, youtubeWebpTask);
        youtubeWebpTask.execute(new Void[0]);
        return null;
    }
}
