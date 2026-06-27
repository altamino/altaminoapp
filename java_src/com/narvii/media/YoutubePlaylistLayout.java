package com.narvii.media;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.lib.R;
import com.narvii.list.NVListViewWrapper;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.api.ListResponse;
import com.narvii.model.api.Pagination;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVImageView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

/* loaded from: classes3.dex */
public class YoutubePlaylistLayout extends NVListViewWrapper {
    private Adapter adapter;
    private PlaylistPickerListener listener;
    private int maximum;
    private View pickButton;
    private ImageView selectAllIcon;
    private Map<String, YoutubePlaylistItem> selectedPlaylistItems;
    private String url;

    public interface PlaylistPickerListener {
        void onFinishPick(List<Media> list);
    }

    public YoutubePlaylistLayout(Context context) {
        super(context);
        this.selectedPlaylistItems = new HashMap();
    }

    public YoutubePlaylistLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.selectedPlaylistItems = new HashMap();
    }

    public void setData(String str, int i) {
        this.url = str;
        this.maximum = i;
    }

    @Override // com.narvii.list.NVListViewWrapper
    protected int getLayoutId() {
        return R.layout.youtube_playlist_items_picker;
    }

    @Override // com.narvii.list.NVListViewWrapper
    public void onViewCreated(View view) {
        super.onViewCreated(view);
        ((TextView) view.findViewById(R.id.playlist_url)).setText(this.url);
        view.findViewById(R.id.select_all).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.-$$Lambda$YoutubePlaylistLayout$YWTX4-SDrvQ9TdK8TjIcjiaQwZU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$0$YoutubePlaylistLayout(view2);
            }
        });
        this.selectAllIcon = (ImageView) view.findViewById(R.id.youtube_video_select_all_icon);
        view.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.-$$Lambda$YoutubePlaylistLayout$esg01Ol2DtR5oaZAkZvNlCZw2O4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$1$YoutubePlaylistLayout(view2);
            }
        });
        this.pickButton = view.findViewById(R.id.finish_select);
        this.pickButton.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.-$$Lambda$YoutubePlaylistLayout$gu9QE9dIgjxXkjDrc5LUNlTxZR0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$2$YoutubePlaylistLayout(view2);
            }
        });
        updatePickerViews();
    }

    public /* synthetic */ void lambda$onViewCreated$0$YoutubePlaylistLayout(View view) {
        List<?> list = this.adapter.list();
        if (list.size() == this.selectedPlaylistItems.size()) {
            this.selectedPlaylistItems.clear();
        } else {
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                YoutubePlaylistItem youtubePlaylistItem = (YoutubePlaylistItem) it.next();
                if (!this.selectedPlaylistItems.containsKey(youtubePlaylistItem.id)) {
                    this.selectedPlaylistItems.put(youtubePlaylistItem.id, youtubePlaylistItem);
                }
            }
        }
        updatePickerViews();
        this.adapter.notifyDataSetChanged();
    }

    public /* synthetic */ void lambda$onViewCreated$1$YoutubePlaylistLayout(View view) {
        this.listener.onFinishPick(null);
    }

    public /* synthetic */ void lambda$onViewCreated$2$YoutubePlaylistLayout(View view) {
        if (this.selectedPlaylistItems.size() > this.maximum) {
            NVToast.makeText(getContext(), getContext().getString(R.string.media_image_picker_hit_max_count, Integer.valueOf(this.maximum)), 0).show();
        } else {
            pick();
        }
    }

    @Override // com.narvii.list.NVListViewWrapper
    protected ListAdapter createAdapter() {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePickerViews() {
        boolean z = false;
        if (!this.selectedPlaylistItems.isEmpty()) {
            if (this.adapter.list().size() <= this.selectedPlaylistItems.size()) {
                z = true;
            } else {
                for (Object obj : this.adapter.list()) {
                    if (!(obj instanceof YoutubePlaylistItem) || !this.selectedPlaylistItems.containsKey(((YoutubePlaylistItem) obj).id)) {
                        break;
                    }
                }
                z = true;
            }
        }
        this.selectAllIcon.setImageResource(z ? R.drawable.ic_media_picker_youtube_playlist_item_radio_selected : R.drawable.ic_media_picker_youtube_playlist_item_radio_unselected);
        this.pickButton.setEnabled(!this.selectedPlaylistItems.isEmpty());
    }

    public void setPlaylistPickerListener(PlaylistPickerListener playlistPickerListener) {
        this.listener = playlistPickerListener;
    }

    private void pick() {
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        new AnonymousClass1(progressDialog).start();
    }

    /* renamed from: com.narvii.media.YoutubePlaylistLayout$1, reason: invalid class name */
    class AnonymousClass1 extends Thread {
        final /* synthetic */ ProgressDialog val$progressDialog;

        AnonymousClass1(ProgressDialog progressDialog) {
            this.val$progressDialog = progressDialog;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws JSONException, IOException {
            final ArrayList arrayList = new ArrayList();
            Map<String, Long> youtubeVideoLength = YoutubeUtils.getYoutubeVideoLength(YoutubePlaylistLayout.this.selectedPlaylistItems.keySet());
            Iterator<?> it = YoutubePlaylistLayout.this.adapter.list().iterator();
            while (it.hasNext()) {
                YoutubePlaylistItem youtubePlaylistItem = (YoutubePlaylistItem) it.next();
                if (YoutubePlaylistLayout.this.selectedPlaylistItems.containsKey(youtubePlaylistItem.id)) {
                    Media media = new Media();
                    media.type = 103;
                    media.url = youtubePlaylistItem.url;
                    String str = youtubePlaylistItem.title;
                    media.caption = str;
                    media.author = youtubePlaylistItem.author;
                    media.fileName = str;
                    Long l = youtubeVideoLength.get(youtubePlaylistItem.id);
                    if (l != null) {
                        media.duration = l.longValue();
                    }
                    arrayList.add(media);
                }
            }
            final ProgressDialog progressDialog = this.val$progressDialog;
            Utils.post(new Runnable() { // from class: com.narvii.media.-$$Lambda$YoutubePlaylistLayout$1$pMecoe0uD-xKaMDnMqMhCh9qRVs
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$0$YoutubePlaylistLayout$1(progressDialog, arrayList);
                }
            });
        }

        public /* synthetic */ void lambda$run$0$YoutubePlaylistLayout$1(ProgressDialog progressDialog, List list) {
            progressDialog.dismiss();
            if (YoutubePlaylistLayout.this.listener != null) {
                YoutubePlaylistLayout.this.listener.onFinishPick(list);
            }
        }
    }

    public static class YoutubePlaylistItem extends NVObject {
        public String author;
        public String id;
        public String thumbnail;
        public String title;
        public String url;

        @Override // com.narvii.model.NVObject
        public int objectType() {
            return 0;
        }

        @Override // com.narvii.model.NVObject
        public String parentId() {
            return null;
        }

        @Override // com.narvii.model.NVObject
        public int status() {
            return 0;
        }

        @Override // com.narvii.model.NVObject
        public String uid() {
            return null;
        }

        @Override // com.narvii.model.NVObject
        public String id() {
            return this.id;
        }

        public static class YoutubePlaylistItemDeserializer extends JsonDeserializer<YoutubePlaylistItem> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.fasterxml.jackson.databind.JsonDeserializer
            public YoutubePlaylistItem deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
                YoutubePlaylistItem youtubePlaylistItem = new YoutubePlaylistItem();
                try {
                    JsonNode jsonNode = ((JsonNode) jsonParser.readValueAsTree()).get("snippet");
                    youtubePlaylistItem.id = jsonNode.get("resourceId").get("videoId").asText();
                    youtubePlaylistItem.url = "ytv://" + youtubePlaylistItem.id;
                    youtubePlaylistItem.title = jsonNode.get("title").asText();
                    youtubePlaylistItem.author = jsonNode.get("channelTitle").asText();
                    youtubePlaylistItem.thumbnail = jsonNode.get("thumbnails").get("medium").get("url").asText();
                } catch (Exception unused) {
                }
                return youtubePlaylistItem;
            }
        }
    }

    public static class YoutubePlaylistResponse extends ListResponse<YoutubePlaylistItem> {

        @JsonDeserialize(contentUsing = YoutubePlaylistItem.YoutubePlaylistItemDeserializer.class)
        public List<YoutubePlaylistItem> items;
        public String nextPageToken;
        public String prevPageToken;

        @Override // com.narvii.model.api.ListResponse
        public Pagination getPaging() {
            Pagination pagination = new Pagination();
            pagination.nextPageToken = this.nextPageToken;
            pagination.prevPageToken = this.prevPageToken;
            return pagination;
        }

        @Override // com.narvii.model.api.ListResponse
        public List<YoutubePlaylistItem> list() {
            return this.items;
        }
    }

    private class Adapter extends NVPagedAdapter<YoutubePlaylistItem, YoutubePlaylistResponse> {
        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        public Adapter() {
            super(((NVListViewWrapper) YoutubePlaylistLayout.this).nvContext, 1);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<YoutubePlaylistItem> dataType() {
            return YoutubePlaylistItem.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<YoutubePlaylistResponse> responseType() {
            return YoutubePlaylistResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder()._url("https://www.googleapis.com/youtube/v3/playlistItems").param("key", YoutubeUtils.ytk()).param("playlistId", YoutubeUtils.getYoutubePlaylistIdFromUrl(YoutubePlaylistLayout.this.url)).param("maxResults", 50).param("part", "snippet").build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, YoutubePlaylistResponse youtubePlaylistResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) youtubePlaylistResponse, i);
            YoutubePlaylistLayout.this.updatePickerViews();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<YoutubePlaylistItem> filterResponseList(List<YoutubePlaylistItem> list, int i) {
            List<YoutubePlaylistItem> listFilterResponseList = super.filterResponseList(list, i);
            if (listFilterResponseList == null) {
                return listFilterResponseList;
            }
            ArrayList arrayList = new ArrayList(listFilterResponseList);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                YoutubePlaylistItem youtubePlaylistItem = (YoutubePlaylistItem) it.next();
                if (TextUtils.isEmpty(youtubePlaylistItem.url) || TextUtils.isEmpty(youtubePlaylistItem.id) || TextUtils.isEmpty(youtubePlaylistItem.thumbnail)) {
                    it.remove();
                }
            }
            return arrayList;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.youtube_playlist_items_picker_item, viewGroup, view);
            if (obj instanceof YoutubePlaylistItem) {
                YoutubePlaylistItem youtubePlaylistItem = (YoutubePlaylistItem) obj;
                ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.youtube_video_select);
                if (YoutubePlaylistLayout.this.selectedPlaylistItems.containsKey(youtubePlaylistItem.id)) {
                    imageView.setImageResource(R.drawable.ic_media_picker_youtube_playlist_item_radio_selected);
                } else {
                    imageView.setImageResource(R.drawable.ic_media_picker_youtube_playlist_item_radio_unselected);
                }
                NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.screenroom_playlist_thumbnail);
                if (!TextUtils.isEmpty(youtubePlaylistItem.thumbnail)) {
                    nVImageView.setImageUrl(youtubePlaylistItem.thumbnail);
                } else {
                    nVImageView.setImageResource(R.drawable.ic_playlist_media_default_background);
                }
                ((TextView) viewCreateView.findViewById(R.id.screenroom_playlist_title)).setText(youtubePlaylistItem.title);
                TextView textView = (TextView) viewCreateView.findViewById(R.id.screenroom_playlist_source_text);
                ImageView imageView2 = (ImageView) viewCreateView.findViewById(R.id.screenroom_playlist_source_icon);
                textView.setText(getContext().getString(R.string.playlist_source_youtube, youtubePlaylistItem.author));
                imageView2.setImageResource(R.drawable.ic_playlist_youtube);
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof YoutubePlaylistItem) {
                YoutubePlaylistItem youtubePlaylistItem = (YoutubePlaylistItem) obj;
                if (YoutubePlaylistLayout.this.selectedPlaylistItems.containsKey(youtubePlaylistItem.id)) {
                    YoutubePlaylistLayout.this.selectedPlaylistItems.remove(youtubePlaylistItem.id);
                } else {
                    YoutubePlaylistLayout.this.selectedPlaylistItems.put(youtubePlaylistItem.id, youtubePlaylistItem);
                }
                YoutubePlaylistLayout.this.updatePickerViews();
                notifyDataSetChanged();
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
