package com.narvii.chat;

import android.content.res.Resources;
import android.graphics.Rect;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.PagerSnapHelper;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.logging.LogEvent;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.util.Utils;
import com.narvii.widget.ScaleView;
import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChatGoLivePickerDialog.kt */
/* loaded from: classes2.dex */
public final class ChatGoLivePickerDialog extends BottomPopupDialog {
    public static final Companion Companion = new Companion(null);
    public static final float MODE_SCALE_RATE = 0.6666667f;
    public static final float MODE_WIDTH_HEIGHT_RATIO = 1.459854f;
    public static final float MODE_WIDTH_RATE_TO_SCREEN_WIDTH = 0.8f;
    private final ChatGoLiveAdapter adapter;
    private final ImageView agreeIV;
    private final List<Integer> enabledModeList;
    private LiveModePickCallback liveModePickCallback;
    private int offsetX;
    private final RecyclerView recyclerView;
    private boolean requireApprovalToSpeak;
    private final int screenWidth;
    private int selectedMode;
    private final PagerSnapHelper snapHelper;

    /* compiled from: ChatGoLivePickerDialog.kt */
    public interface LiveModePickCallback {
        void onLiveModePicked(int i, boolean z);
    }

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "GoLivePicker";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatGoLivePickerDialog(NVContext ctx, boolean z, List<Integer> enabledModeList) throws IllegalStateException {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(enabledModeList, "enabledModeList");
        this.enabledModeList = enabledModeList;
        this.screenWidth = Utils.getScreenWidth(ctx.getContext());
        this.adapter = new ChatGoLiveAdapter(ctx, (int) (this.screenWidth * 0.8f));
        this.snapHelper = new PagerSnapHelper();
        this.selectedMode = 1;
        setupView(R.layout.chat_go_live_picker_dialog_layout);
        this.requireApprovalToSpeak = z;
        View viewFindViewById = findViewById(R.id.recycler_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.recycler_view)");
        this.recyclerView = (RecyclerView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.agree_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.agree_iv)");
        this.agreeIV = (ImageView) viewFindViewById2;
        if (z) {
            findViewById(R.id.agree_others_speak_ll).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatGoLivePickerDialog.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChatGoLivePickerDialog.this.requireApprovalToSpeak = !r2.requireApprovalToSpeak;
                    ChatGoLivePickerDialog chatGoLivePickerDialog = ChatGoLivePickerDialog.this;
                    chatGoLivePickerDialog.updateAgreement(chatGoLivePickerDialog.requireApprovalToSpeak);
                }
            });
        } else {
            View viewFindViewById3 = findViewById(R.id.agree_others_speak_ll);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById<View>(R.id.agree_others_speak_ll)");
            viewFindViewById3.setVisibility(8);
        }
        findViewById(R.id.select_tv).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatGoLivePickerDialog.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws Resources.NotFoundException {
                int i = ChatGoLivePickerDialog.this.selectedMode;
                LogEvent.clickWildcardBuilder(ChatGoLivePickerDialog.this, "SelectButton").extraParam("requireApproval", Boolean.valueOf(ChatGoLivePickerDialog.this.requireApprovalToSpeak)).extraParam("chatType", i != 1 ? i != 4 ? i != 5 ? "" : "screeningRoom" : "videoChat" : "voiceChat").send();
                LiveModePickCallback liveModePickCallback = ChatGoLivePickerDialog.this.getLiveModePickCallback();
                if (liveModePickCallback != null) {
                    liveModePickCallback.onLiveModePicked(ChatGoLivePickerDialog.this.selectedMode, ChatGoLivePickerDialog.this.requireApprovalToSpeak);
                }
                ChatGoLivePickerDialog.this.dismiss();
            }
        });
        this.snapHelper.attachToRecyclerView(this.recyclerView);
        ViewGroup.LayoutParams layoutParams = this.recyclerView.getLayoutParams();
        layoutParams.height = (int) ((this.screenWidth * 0.8f) / 1.459854f);
        this.recyclerView.setLayoutParams(layoutParams);
        this.recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        this.recyclerView.setAdapter(this.adapter);
        int iDpToPxInt = (int) (((this.screenWidth * 0.19999999f) / 2) - Utils.dpToPxInt(getContext(), 10.0f));
        this.recyclerView.addItemDecoration(new LinearEdgeDecoration(iDpToPxInt, iDpToPxInt, 0, Utils.isRtl()));
        this.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.chat.ChatGoLivePickerDialog.3
            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                if (Utils.isRtl()) {
                    ChatGoLivePickerDialog.this.offsetX -= i;
                } else {
                    ChatGoLivePickerDialog.this.offsetX += i;
                }
                ChatGoLivePickerDialog.this.adapter.updateSelectedPosition(-1, ChatGoLivePickerDialog.this.offsetX);
            }

            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                RecyclerView.LayoutManager layoutManager;
                View viewFindSnapView;
                super.onScrollStateChanged(recyclerView, i);
                if (i != 0 || recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewFindSnapView = ChatGoLivePickerDialog.this.snapHelper.findSnapView(layoutManager)) == null) {
                    return;
                }
                Intrinsics.checkExpressionValueIsNotNull(viewFindSnapView, "snapHelper.findSnapView(llm) ?: return");
                int position = layoutManager.getPosition(viewFindSnapView);
                ChatGoLivePickerDialog chatGoLivePickerDialog = ChatGoLivePickerDialog.this;
                chatGoLivePickerDialog.selectedMode = ((Number) chatGoLivePickerDialog.enabledModeList.get(position)).intValue();
                ChatGoLivePickerDialog.this.adapter.updateSelectedPosition(position, ChatGoLivePickerDialog.this.offsetX);
            }
        });
        this.adapter.setDataList(this.enabledModeList);
        updateAgreement(this.requireApprovalToSpeak);
    }

    public final LiveModePickCallback getLiveModePickCallback() {
        return this.liveModePickCallback;
    }

    public final void setLiveModePickCallback(LiveModePickCallback liveModePickCallback) {
        this.liveModePickCallback = liveModePickCallback;
    }

    /* compiled from: ChatGoLivePickerDialog.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateAgreement(boolean z) {
        this.agreeIV.setImageResource(z ? R.drawable.go_live_agreement_checked : R.drawable.go_live_agreement_unchecked);
    }

    /* compiled from: ChatGoLivePickerDialog.kt */
    private static final class ChatGoLiveAdapter extends NVRecyclerViewBaseAdapter {
        private final List<Integer> dataList;
        private int itemMargin;
        private final int itemWidth;
        private int scrollOffset;
        private int selectedPos;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChatGoLiveAdapter(NVContext ctx, int i) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.itemWidth = i;
            this.dataList = new ArrayList();
            this.itemMargin = Utils.dpToPxInt(ctx.getContext(), 10.0f);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            View v = LayoutInflater.from(getContext()).inflate(R.layout.chat_go_live_view_holder_layout, parent, false);
            View container = v.findViewById(R.id.container);
            Intrinsics.checkExpressionValueIsNotNull(container, "container");
            ViewGroup.LayoutParams layoutParams = container.getLayoutParams();
            int i2 = this.itemWidth;
            layoutParams.width = i2;
            layoutParams.height = (int) (i2 / 1.459854f);
            container.setLayoutParams(layoutParams);
            Intrinsics.checkExpressionValueIsNotNull(v, "v");
            return new ChatGoLiveViewHolder(this, v);
        }

        public final void setDataList(List<Integer> list) {
            Intrinsics.checkParameterIsNotNull(list, "list");
            this.dataList.clear();
            this.dataList.addAll(list);
            notifyDataSetChanged();
        }

        public final void updateSelectedPosition(int i, int i2) {
            this.selectedPos = i;
            this.scrollOffset = i2;
            notifyDataSetChanged();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.dataList.size();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            int iIntValue = this.dataList.get(i).intValue();
            float f = 0.6666667f;
            float f2 = (this.itemWidth * 0.6666667f) + this.itemMargin;
            float fAbs = Math.abs(this.scrollOffset - (i * f2));
            if (fAbs >= 0.0f && fAbs <= f2) {
                float f3 = 4;
                if (fAbs < f2 / f3) {
                    f = 1.0f;
                } else if (fAbs <= (3.0f * f2) / f3) {
                    f = (((fAbs * (-0.6666666f)) / f2) + 1.5f) - 0.33333334f;
                }
            }
            ((ChatGoLiveViewHolder) holder).updateView(iIntValue, f);
        }

        /* compiled from: ChatGoLivePickerDialog.kt */
        private final class ChatGoLiveViewHolder extends RecyclerView.ViewHolder {
            private final TextView hintTV;
            private final ImageView modeIV;
            private final ScaleView scaleView;
            final /* synthetic */ ChatGoLiveAdapter this$0;
            private final TextView titleTV;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ChatGoLiveViewHolder(ChatGoLiveAdapter chatGoLiveAdapter, View view) {
                super(view);
                Intrinsics.checkParameterIsNotNull(view, "view");
                this.this$0 = chatGoLiveAdapter;
                this.scaleView = (ScaleView) this.itemView.findViewById(R.id.scale_view);
                this.modeIV = (ImageView) this.itemView.findViewById(R.id.mode_iv);
                this.titleTV = (TextView) this.itemView.findViewById(R.id.mode_title_tv);
                this.hintTV = (TextView) this.itemView.findViewById(R.id.mode_hint_tv);
            }

            public final void updateView(int i, float f) {
                ScaleView scaleView = this.scaleView;
                Intrinsics.checkExpressionValueIsNotNull(scaleView, "scaleView");
                scaleView.setScale(f);
                ScaleView scaleView2 = this.scaleView;
                Intrinsics.checkExpressionValueIsNotNull(scaleView2, "scaleView");
                double d = f;
                Double.isNaN(d);
                double d2 = 0.4f;
                Double.isNaN(d2);
                scaleView2.setAlpha((float) ((d * 0.6d) + d2));
                if (i == 1) {
                    this.modeIV.setBackgroundResource(R.drawable.mode_live_chatting);
                    this.titleTV.setText(R.string.voice);
                    this.hintTV.setText(R.string.live_chatting_hint);
                } else if (i == 4) {
                    this.modeIV.setBackgroundResource(R.drawable.mode_video_chat);
                    this.titleTV.setText(R.string.live_stream);
                    this.hintTV.setText(R.string.video_chat_hint);
                } else {
                    if (i != 5) {
                        return;
                    }
                    this.modeIV.setBackgroundResource(R.drawable.mode_video_sharing);
                    this.titleTV.setText(R.string.video_sharing);
                    this.hintTV.setText(R.string.video_sharing_hint);
                }
            }
        }
    }

    /* compiled from: ChatGoLivePickerDialog.kt */
    private static final class LinearEdgeDecoration extends RecyclerView.ItemDecoration {
        private final int endPadding;
        private final boolean inverted;
        private final int orientation;
        private final int startPadding;

        public LinearEdgeDecoration(int i, int i2, int i3, boolean z) {
            this.startPadding = i;
            this.endPadding = i2;
            this.orientation = i3;
            this.inverted = z;
        }

        public /* synthetic */ LinearEdgeDecoration(int i, int i2, int i3, boolean z, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, (i4 & 2) != 0 ? i : i2, (i4 & 4) != 0 ? 1 : i3, (i4 & 8) != 0 ? false : z);
        }

        @Override // android.support.v7.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
            Intrinsics.checkParameterIsNotNull(outRect, "outRect");
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            Intrinsics.checkParameterIsNotNull(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
            if (layoutManager == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.RecyclerView.LayoutParams");
            }
            int viewAdapterPosition = ((RecyclerView.LayoutParams) layoutParams).getViewAdapterPosition();
            int itemCount = layoutManager.getItemCount();
            if (viewAdapterPosition == -1 || itemCount == 0) {
                return;
            }
            if (viewAdapterPosition <= 0 || viewAdapterPosition >= itemCount - 1) {
                if (this.orientation == 0) {
                    if (viewAdapterPosition == 0) {
                        if (!this.inverted) {
                            outRect.left = this.startPadding;
                            return;
                        } else {
                            outRect.right = this.startPadding;
                            return;
                        }
                    }
                    if (viewAdapterPosition == itemCount - 1) {
                        if (!this.inverted) {
                            outRect.right = this.endPadding;
                            return;
                        } else {
                            outRect.left = this.endPadding;
                            return;
                        }
                    }
                    return;
                }
                if (viewAdapterPosition == 0) {
                    if (!this.inverted) {
                        outRect.top = this.startPadding;
                        return;
                    } else {
                        outRect.bottom = this.startPadding;
                        return;
                    }
                }
                if (viewAdapterPosition == itemCount - 1) {
                    if (!this.inverted) {
                        outRect.bottom = this.endPadding;
                    } else {
                        outRect.top = this.endPadding;
                    }
                }
            }
        }
    }
}
