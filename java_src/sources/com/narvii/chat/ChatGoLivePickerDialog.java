package com.narvii.chat;

import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.logging.LogEvent;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.util.Utils;
import com.narvii.widget.ScaleView;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class ChatGoLivePickerDialog extends BottomPopupDialog {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final float MODE_SCALE_RATE = 0.6666667f;
    public static final float MODE_WIDTH_HEIGHT_RATIO = 1.459854f;
    public static final float MODE_WIDTH_RATE_TO_SCREEN_WIDTH = 0.8f;

    @NotNull
    private final ChatGoLiveAdapter adapter;

    @NotNull
    private final ImageView agreeIV;

    @NotNull
    private final List<Integer> enabledModeList;

    @Nullable
    private LiveModePickCallback liveModePickCallback;
    private int offsetX;

    @NotNull
    private final RecyclerView recyclerView;
    private boolean requireApprovalToSpeak;
    private final int screenWidth;
    private int selectedMode;

    @NotNull
    private final PagerSnapHelper snapHelper;

    private static final class ChatGoLiveAdapter extends NVRecyclerViewBaseAdapter {

        @NotNull
        private final List<Integer> dataList;
        private int itemMargin;
        private final int itemWidth;
        private int scrollOffset;
        private int selectedPos;

        private static final class ChatGoLiveViewHolder extends RecyclerView.ViewHolder {
            private final TextView hintTV;
            private final ImageView modeIV;
            private final ScaleView scaleView;
            private final TextView titleTV;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ChatGoLiveViewHolder(@NotNull View view) {
                super(view);
                kotlin.jvm.internal.t.j(view, "view");
                this.scaleView = (ScaleView) this.itemView.findViewById(R.id.scale_view);
                this.modeIV = (ImageView) this.itemView.findViewById(R.id.mode_iv);
                this.titleTV = (TextView) this.itemView.findViewById(R.id.mode_title_tv);
                this.hintTV = (TextView) this.itemView.findViewById(R.id.mode_hint_tv);
            }

            public final void updateView(int i10, float f) {
                this.scaleView.setScale(f);
                this.scaleView.setAlpha((float) ((((double) f) * 0.6d) + ((double) 0.4f)));
                if (i10 == 1) {
                    this.modeIV.setBackgroundResource(R.drawable.mode_live_chatting);
                    this.titleTV.setText(R.string.voice);
                    this.hintTV.setText(R.string.live_chatting_hint);
                } else if (i10 == 4) {
                    this.modeIV.setBackgroundResource(R.drawable.mode_video_chat);
                    this.titleTV.setText(R.string.live_stream);
                    this.hintTV.setText(R.string.video_chat_hint);
                } else {
                    if (i10 != 5) {
                        return;
                    }
                    this.modeIV.setBackgroundResource(R.drawable.mode_video_sharing);
                    this.titleTV.setText(R.string.video_sharing);
                    this.hintTV.setText(R.string.video_sharing_hint);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChatGoLiveAdapter(@NotNull NVContext ctx, int i10) {
            super(ctx);
            kotlin.jvm.internal.t.j(ctx, "ctx");
            this.itemWidth = i10;
            this.dataList = new ArrayList();
            this.itemMargin = Utils.dpToPxInt(ctx.getContext(), 10.0f);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.dataList.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
            kotlin.jvm.internal.t.j(holder, "holder");
            int iIntValue = this.dataList.get(i10).intValue();
            float f = 0.6666667f;
            float f6 = (this.itemWidth * 0.6666667f) + this.itemMargin;
            float fAbs = Math.abs(this.scrollOffset - (i10 * f6));
            if (0.0f <= fAbs && fAbs <= f6) {
                float f7 = 4;
                if (fAbs < f6 / f7) {
                    f = 1.0f;
                } else if (fAbs <= (3.0f * f6) / f7) {
                    f = (((fAbs * (-0.6666666f)) / f6) + 1.5f) - 0.33333334f;
                }
            }
            ((ChatGoLiveViewHolder) holder).updateView(iIntValue, f);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
            kotlin.jvm.internal.t.j(parent, "parent");
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.chat_go_live_view_holder_layout, parent, false);
            View viewFindViewById = viewInflate.findViewById(R.id.container);
            ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
            int i11 = this.itemWidth;
            layoutParams.width = i11;
            layoutParams.height = (int) (i11 / 1.459854f);
            viewFindViewById.setLayoutParams(layoutParams);
            kotlin.jvm.internal.t.g(viewInflate);
            return new ChatGoLiveViewHolder(viewInflate);
        }

        public final void setDataList(@NotNull List<Integer> list) {
            kotlin.jvm.internal.t.j(list, "list");
            this.dataList.clear();
            this.dataList.addAll(list);
            notifyDataSetChanged();
        }

        public final void updateSelectedPosition(int i10, int i11) {
            this.selectedPos = i10;
            this.scrollOffset = i11;
            notifyDataSetChanged();
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    private static final class LinearEdgeDecoration extends RecyclerView.ItemDecoration {
        private final int endPadding;
        private final boolean inverted;
        private final int orientation;
        private final int startPadding;

        public /* synthetic */ LinearEdgeDecoration(int i10, int i11, int i12, boolean z6, int i13, kotlin.jvm.internal.k kVar) {
            this(i10, (i13 & 2) != 0 ? i10 : i11, (i13 & 4) != 0 ? 1 : i12, (i13 & 8) != 0 ? false : z6);
        }

        public LinearEdgeDecoration(int i10, int i11, int i12, boolean z6) {
            this.startPadding = i10;
            this.endPadding = i11;
            this.orientation = i12;
            this.inverted = z6;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
            kotlin.jvm.internal.t.j(outRect, "outRect");
            kotlin.jvm.internal.t.j(view, "view");
            kotlin.jvm.internal.t.j(parent, "parent");
            kotlin.jvm.internal.t.j(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
            kotlin.jvm.internal.t.g(layoutManager);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            kotlin.jvm.internal.t.h(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
            int iA = ((RecyclerView.LayoutParams) layoutParams).a();
            int itemCount = layoutManager.getItemCount();
            if (iA == -1 || itemCount == 0) {
                return;
            }
            if (iA <= 0 || iA >= itemCount - 1) {
                if (this.orientation == 0) {
                    if (iA == 0) {
                        if (this.inverted) {
                            outRect.right = this.startPadding;
                            return;
                        } else {
                            outRect.left = this.startPadding;
                            return;
                        }
                    }
                    if (iA == itemCount - 1) {
                        if (this.inverted) {
                            outRect.left = this.endPadding;
                            return;
                        } else {
                            outRect.right = this.endPadding;
                            return;
                        }
                    }
                    return;
                }
                if (iA == 0) {
                    if (this.inverted) {
                        outRect.bottom = this.startPadding;
                        return;
                    } else {
                        outRect.top = this.startPadding;
                        return;
                    }
                }
                if (iA == itemCount - 1) {
                    if (this.inverted) {
                        outRect.top = this.endPadding;
                    } else {
                        outRect.bottom = this.endPadding;
                    }
                }
            }
        }
    }

    public interface LiveModePickCallback {
        void onLiveModePicked(int i10, boolean z6);
    }

    @Nullable
    public final LiveModePickCallback getLiveModePickCallback() {
        return this.liveModePickCallback;
    }

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "go_live_picker";
    }

    public final void setLiveModePickCallback(@Nullable LiveModePickCallback liveModePickCallback) {
        this.liveModePickCallback = liveModePickCallback;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatGoLivePickerDialog(@NotNull NVContext ctx, boolean z6, @NotNull List<Integer> enabledModeList) {
        super(ctx);
        kotlin.jvm.internal.t.j(ctx, "ctx");
        kotlin.jvm.internal.t.j(enabledModeList, "enabledModeList");
        this.enabledModeList = enabledModeList;
        int screenWidth = Utils.getScreenWidth(ctx.getContext());
        this.screenWidth = screenWidth;
        ChatGoLiveAdapter chatGoLiveAdapter = new ChatGoLiveAdapter(ctx, (int) (screenWidth * 0.8f));
        this.adapter = chatGoLiveAdapter;
        PagerSnapHelper pagerSnapHelper = new PagerSnapHelper();
        this.snapHelper = pagerSnapHelper;
        this.selectedMode = 1;
        setupView(R.layout.chat_go_live_picker_dialog_layout);
        this.requireApprovalToSpeak = z6;
        View viewFindViewById = findViewById(R.id.recycler_view);
        kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
        RecyclerView recyclerView = (RecyclerView) viewFindViewById;
        this.recyclerView = recyclerView;
        View viewFindViewById2 = findViewById(R.id.agree_iv);
        kotlin.jvm.internal.t.i(viewFindViewById2, "findViewById(...)");
        this.agreeIV = (ImageView) viewFindViewById2;
        if (z6) {
            findViewById(R.id.agree_others_speak_ll).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChatGoLivePickerDialog._init_$lambda$0(this.f1981a, view);
                }
            });
        } else {
            findViewById(R.id.agree_others_speak_ll).setVisibility(8);
        }
        findViewById(R.id.select_tv).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatGoLivePickerDialog._init_$lambda$1(this.f1982a, view);
            }
        });
        pagerSnapHelper.b(recyclerView);
        ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
        layoutParams.height = (int) ((screenWidth * 0.8f) / 1.459854f);
        recyclerView.setLayoutParams(layoutParams);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        recyclerView.setAdapter(chatGoLiveAdapter);
        int iDpToPxInt = (int) (((screenWidth * 0.19999999f) / 2) - Utils.dpToPxInt(getContext(), 10.0f));
        recyclerView.addItemDecoration(new LinearEdgeDecoration(iDpToPxInt, iDpToPxInt, 0, Utils.isRtl()));
        recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.chat.ChatGoLivePickerDialog.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NotNull RecyclerView recyclerView2, int i10) {
                RecyclerView.LayoutManager layoutManager;
                View viewH;
                kotlin.jvm.internal.t.j(recyclerView2, "recyclerView");
                super.onScrollStateChanged(recyclerView2, i10);
                if (i10 != 0 || (layoutManager = recyclerView2.getLayoutManager()) == null || (viewH = ChatGoLivePickerDialog.this.snapHelper.h(layoutManager)) == null) {
                    return;
                }
                int position = layoutManager.getPosition(viewH);
                ChatGoLivePickerDialog chatGoLivePickerDialog = ChatGoLivePickerDialog.this;
                chatGoLivePickerDialog.selectedMode = ((Number) chatGoLivePickerDialog.enabledModeList.get(position)).intValue();
                ChatGoLivePickerDialog.this.adapter.updateSelectedPosition(position, ChatGoLivePickerDialog.this.offsetX);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(@NotNull RecyclerView recyclerView2, int i10, int i11) {
                kotlin.jvm.internal.t.j(recyclerView2, "recyclerView");
                super.onScrolled(recyclerView2, i10, i11);
                if (Utils.isRtl()) {
                    ChatGoLivePickerDialog.this.offsetX -= i10;
                } else {
                    ChatGoLivePickerDialog.this.offsetX += i10;
                }
                ChatGoLivePickerDialog.this.adapter.updateSelectedPosition(-1, ChatGoLivePickerDialog.this.offsetX);
            }
        });
        chatGoLiveAdapter.setDataList(enabledModeList);
        updateAgreement(this.requireApprovalToSpeak);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(ChatGoLivePickerDialog this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        boolean z6 = !this$0.requireApprovalToSpeak;
        this$0.requireApprovalToSpeak = z6;
        this$0.updateAgreement(z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(ChatGoLivePickerDialog this$0, View view) {
        String str;
        kotlin.jvm.internal.t.j(this$0, "this$0");
        int i10 = this$0.selectedMode;
        if (i10 == 1) {
            str = "voiceChat";
        } else if (i10 != 4) {
            str = i10 != 5 ? "" : "screeningRoom";
        } else {
            str = "videoChat";
        }
        LogEvent.clickWildcardBuilder(this$0, "SelectButton").extraParam("requireApproval", Boolean.valueOf(this$0.requireApprovalToSpeak)).extraParam("chatType", str).send();
        LiveModePickCallback liveModePickCallback = this$0.liveModePickCallback;
        if (liveModePickCallback != null) {
            liveModePickCallback.onLiveModePicked(this$0.selectedMode, this$0.requireApprovalToSpeak);
        }
        this$0.dismiss();
    }

    private final void updateAgreement(boolean z6) {
        this.agreeIV.setImageResource(z6 ? R.drawable.go_live_agreement_checked : R.drawable.go_live_agreement_unchecked);
    }
}
