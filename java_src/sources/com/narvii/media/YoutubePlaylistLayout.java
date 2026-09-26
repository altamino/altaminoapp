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
import com.google.android.gms.common.internal.ImagesContract;
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
import org.schabi.newpipe.extractor.services.youtube.r0;

/* JADX INFO: loaded from: classes4.dex */
public class YoutubePlaylistLayout extends NVListViewWrapper {
    private Adapter adapter;
    private PlaylistPickerListener listener;
    private int maximum;
    private View pickButton;
    private ImageView selectAllIcon;
    private Map<String, YoutubePlaylistItem> selectedPlaylistItems;
    private String url;

    /* JADX INFO: renamed from: com.narvii.media.YoutubePlaylistLayout$1, reason: invalid class name */
    class AnonymousClass1 extends Thread {
        final /* synthetic */ ProgressDialog val$progressDialog;

        AnonymousClass1(ProgressDialog progressDialog) {
            this.val$progressDialog = progressDialog;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
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
            Utils.post(new Runnable() { // from class: com.narvii.media.k
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2459a.lambda$run$0(progressDialog, arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(ProgressDialog progressDialog, List list) {
            progressDialog.dismiss();
            if (YoutubePlaylistLayout.this.listener != null) {
                YoutubePlaylistLayout.this.listener.onFinishPick(list);
            }
        }
    }

    private class Adapter extends NVPagedAdapter<YoutubePlaylistItem, YoutubePlaylistResponse> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<YoutubePlaylistItem> dataType() {
            return YoutubePlaylistItem.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<YoutubePlaylistResponse> responseType() {
            return YoutubePlaylistResponse.class;
        }

        public Adapter() {
            super(((NVListViewWrapper) YoutubePlaylistLayout.this).nvContext, 1);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return ApiRequest.builder()._url("https://www.googleapis.com/youtube/v3/playlistItems").param("key", YoutubeUtils.ytk()).param("playlistId", YoutubeUtils.getYoutubePlaylistIdFromUrl(YoutubePlaylistLayout.this.url)).param("maxResults", 50).param("part", "snippet").build();
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
                if (TextUtils.isEmpty(youtubePlaylistItem.thumbnail)) {
                    nVImageView.setImageResource(R.drawable.ic_playlist_media_default_background);
                } else {
                    nVImageView.setImageUrl(youtubePlaylistItem.thumbnail);
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
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof YoutubePlaylistItem)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
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

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, YoutubePlaylistResponse youtubePlaylistResponse, int i10) {
            super.onPageResponse(apiRequest, youtubePlaylistResponse, i10);
            YoutubePlaylistLayout.this.updatePickerViews();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<YoutubePlaylistItem> filterResponseList(List<YoutubePlaylistItem> list, int i10) {
            List<YoutubePlaylistItem> listFilterResponseList = super.filterResponseList(list, i10);
            if (listFilterResponseList != null) {
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
            return listFilterResponseList;
        }
    }

    public interface PlaylistPickerListener {
        void onFinishPick(List<Media> list);
    }

    public static class YoutubePlaylistItem extends NVObject {
        public String author;
        public String id;
        public String thumbnail;
        public String title;
        public String url;

        public static class YoutubePlaylistItemDeserializer extends JsonDeserializer<YoutubePlaylistItem> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.fasterxml.jackson.databind.JsonDeserializer
            public YoutubePlaylistItem deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
                YoutubePlaylistItem youtubePlaylistItem = new YoutubePlaylistItem();
                try {
                    JsonNode jsonNode = ((JsonNode) jsonParser.readValueAsTree()).get("snippet");
                    youtubePlaylistItem.id = jsonNode.get("resourceId").get(r0.VIDEO_ID).asText();
                    youtubePlaylistItem.url = "ytv://" + youtubePlaylistItem.id;
                    youtubePlaylistItem.title = jsonNode.get("title").asText();
                    youtubePlaylistItem.author = jsonNode.get("channelTitle").asText();
                    youtubePlaylistItem.thumbnail = jsonNode.get("thumbnails").get(com.google.firebase.dynamiclinks.internal.b.KEY_MEDIUM).get(ImagesContract.URL).asText();
                } catch (Exception unused) {
                }
                return youtubePlaylistItem;
            }
        }

        @Override // com.narvii.model.NVObject
        public String id() {
            return this.id;
        }

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
    }

    public static class YoutubePlaylistResponse extends ListResponse<YoutubePlaylistItem> {

        @JsonDeserialize(contentUsing = YoutubePlaylistItem.YoutubePlaylistItemDeserializer.class)
        public List<YoutubePlaylistItem> items;
        public String nextPageToken;
        public String prevPageToken;

        @Override // com.narvii.model.api.ListResponse
        public List<YoutubePlaylistItem> list() {
            return this.items;
        }

        @Override // com.narvii.model.api.ListResponse
        public Pagination getPaging() {
            Pagination pagination = new Pagination();
            pagination.nextPageToken = this.nextPageToken;
            pagination.prevPageToken = this.prevPageToken;
            return pagination;
        }
    }

    public YoutubePlaylistLayout(Context context) {
        super(context);
        this.selectedPlaylistItems = new HashMap();
    }

    @Override // com.narvii.list.NVListViewWrapper
    protected int getLayoutId() {
        return R.layout.youtube_playlist_items_picker;
    }

    public void setData(String str, int i10) {
        this.url = str;
        this.maximum = i10;
    }

    public void setPlaylistPickerListener(PlaylistPickerListener playlistPickerListener) {
        this.listener = playlistPickerListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0(View view) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$1(View view) {
        this.listener.onFinishPick(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$2(View view) {
        if (this.selectedPlaylistItems.size() > this.maximum) {
            NVToast.makeText(getContext(), getContext().getString(R.string.media_image_picker_hit_max_count, Integer.valueOf(this.maximum)), 0).show();
        } else {
            pick();
        }
    }

    private void pick() {
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        new AnonymousClass1(progressDialog).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePickerViews() {
        Object next;
        boolean z6 = false;
        if (!this.selectedPlaylistItems.isEmpty()) {
            if (this.adapter.list().size() > this.selectedPlaylistItems.size()) {
                Iterator<?> it = this.adapter.list().iterator();
                do {
                    if (!it.hasNext()) {
                        z6 = true;
                        break;
                    } else {
                        next = it.next();
                        if (!(next instanceof YoutubePlaylistItem)) {
                            break;
                        }
                    }
                } while (this.selectedPlaylistItems.containsKey(((YoutubePlaylistItem) next).id));
            } else {
                z6 = true;
                break;
            }
        }
        this.selectAllIcon.setImageResource(z6 ? R.drawable.ic_media_picker_youtube_playlist_item_radio_selected : R.drawable.ic_media_picker_youtube_playlist_item_radio_unselected);
        this.pickButton.setEnabled(!this.selectedPlaylistItems.isEmpty());
    }

    @Override // com.narvii.list.NVListViewWrapper
    protected ListAdapter createAdapter() {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    public YoutubePlaylistLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.selectedPlaylistItems = new HashMap();
    }

    @Override // com.narvii.list.NVListViewWrapper
    public void onViewCreated(View view) {
        super.onViewCreated(view);
        ((TextView) view.findViewById(R.id.playlist_url)).setText(this.url);
        view.findViewById(R.id.select_all).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f2456a.lambda$onViewCreated$0(view2);
            }
        });
        this.selectAllIcon = (ImageView) view.findViewById(R.id.youtube_video_select_all_icon);
        view.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f2457a.lambda$onViewCreated$1(view2);
            }
        });
        View viewFindViewById = view.findViewById(R.id.finish_select);
        this.pickButton = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f2458a.lambda$onViewCreated$2(view2);
            }
        });
        updatePickerViews();
    }
}
