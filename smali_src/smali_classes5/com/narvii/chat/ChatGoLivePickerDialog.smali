.class public final Lcom/narvii/chat/ChatGoLivePickerDialog;
.super Lcom/narvii/chat/BottomPopupDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;,
        Lcom/narvii/chat/ChatGoLivePickerDialog$Companion;,
        Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;,
        Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/chat/ChatGoLivePickerDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MODE_SCALE_RATE:F = 0.6666667f

.field public static final MODE_WIDTH_HEIGHT_RATIO:F = 1.459854f

.field public static final MODE_WIDTH_RATE_TO_SCREEN_WIDTH:F = 0.8f


# instance fields
.field private final adapter:Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final agreeIV:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final enabledModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private liveModePickCallback:Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private offsetX:I

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private requireApprovalToSpeak:Z

.field private final screenWidth:I

.field private selectedMode:I

.field private final snapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/chat/ChatGoLivePickerDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/ChatGoLivePickerDialog$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/chat/ChatGoLivePickerDialog;->Companion:Lcom/narvii/chat/ChatGoLivePickerDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;ZLjava/util/List;)V
    .locals 6
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "enabledModeList"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/chat/BottomPopupDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iput-object p3, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->enabledModeList:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 23
    move-result v0

    .line 24
    .line 25
    iput v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->screenWidth:I

    .line 26
    .line 27
    new-instance v1, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;

    .line 28
    int-to-float v2, v0

    .line 29
    .line 30
    .line 31
    const v3, 0x3f4ccccd    # 0.8f

    .line 32
    mul-float/2addr v2, v3

    .line 33
    float-to-int v2, v2

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p1, v2}, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 37
    .line 38
    iput-object v1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->adapter:Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;

    .line 39
    .line 40
    new-instance p1, Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->snapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 46
    const/4 v2, 0x1

    .line 47
    .line 48
    iput v2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->selectedMode:I

    .line 49
    .line 50
    .line 51
    const v2, 0x7f0d00cb

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2}, Lcom/narvii/chat/BottomPopupDialog;->setupView(I)Landroid/view/View;

    .line 55
    .line 56
    iput-boolean p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->requireApprovalToSpeak:Z

    .line 57
    .line 58
    .line 59
    const v2, 0x7f0a0bfc

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    const-string v4, "findViewById(...)"

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    iput-object v2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    .line 75
    const v5, 0x7f0a00be

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v5

    .line 80
    .line 81
    .line 82
    invoke-static {v5, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    check-cast v5, Landroid/widget/ImageView;

    .line 85
    .line 86
    iput-object v5, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->agreeIV:Landroid/widget/ImageView;

    .line 87
    .line 88
    .line 89
    const v4, 0x7f0a00c0

    .line 90
    .line 91
    if-eqz p2, :cond_0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 95
    move-result-object p2

    .line 96
    .line 97
    new-instance v4, Lcom/narvii/chat/n;

    .line 98
    .line 99
    .line 100
    invoke-direct {v4, p0}, Lcom/narvii/chat/n;-><init>(Lcom/narvii/chat/ChatGoLivePickerDialog;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    goto :goto_0

    .line 105
    .line 106
    .line 107
    :cond_0
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 108
    move-result-object p2

    .line 109
    .line 110
    const/16 v4, 0x8

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    :goto_0
    const p2, 0x7f0a0ccd

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 120
    move-result-object p2

    .line 121
    .line 122
    new-instance v4, Lcom/narvii/chat/o;

    .line 123
    .line 124
    .line 125
    invoke-direct {v4, p0}, Lcom/narvii/chat/o;-><init>(Lcom/narvii/chat/ChatGoLivePickerDialog;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/SnapHelper;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 135
    move-result-object p1

    .line 136
    int-to-float p2, v0

    .line 137
    mul-float/2addr p2, v3

    .line 138
    .line 139
    .line 140
    const v3, 0x3fbadc7f

    .line 141
    div-float/2addr p2, v3

    .line 142
    float-to-int p2, p2

    .line 143
    .line 144
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .line 149
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 153
    move-result-object p2

    .line 154
    const/4 v3, 0x0

    .line 155
    .line 156
    .line 157
    invoke-direct {p1, p2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 164
    int-to-float p1, v0

    .line 165
    .line 166
    .line 167
    const p2, 0x3e4ccccc    # 0.19999999f

    .line 168
    mul-float/2addr p1, p2

    .line 169
    const/4 p2, 0x2

    .line 170
    int-to-float p2, p2

    .line 171
    div-float/2addr p1, p2

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 175
    move-result-object p2

    .line 176
    .line 177
    const/high16 v0, 0x41200000    # 10.0f

    .line 178
    .line 179
    .line 180
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 181
    move-result p2

    .line 182
    int-to-float p2, p2

    .line 183
    sub-float/2addr p1, p2

    .line 184
    float-to-int p1, p1

    .line 185
    .line 186
    new-instance p2, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;

    .line 187
    .line 188
    .line 189
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 190
    move-result v0

    .line 191
    .line 192
    .line 193
    invoke-direct {p2, p1, p1, v3, v0}, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;-><init>(IIIZ)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 197
    .line 198
    new-instance p1, Lcom/narvii/chat/ChatGoLivePickerDialog$3;

    .line 199
    .line 200
    .line 201
    invoke-direct {p1, p0}, Lcom/narvii/chat/ChatGoLivePickerDialog$3;-><init>(Lcom/narvii/chat/ChatGoLivePickerDialog;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, p3}, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->setDataList(Ljava/util/List;)V

    .line 208
    .line 209
    iget-boolean p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->requireApprovalToSpeak:Z

    .line 210
    .line 211
    .line 212
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->updateAgreement(Z)V

    .line 213
    return-void
.end method

.method private static final _init_$lambda$0(Lcom/narvii/chat/ChatGoLivePickerDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->requireApprovalToSpeak:Z

    .line 8
    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->requireApprovalToSpeak:Z

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->updateAgreement(Z)V

    .line 15
    return-void
.end method

.method private static final _init_$lambda$1(Lcom/narvii/chat/ChatGoLivePickerDialog;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->selectedMode:I

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    const/4 v0, 0x4

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    const/4 v0, 0x5

    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    const-string p1, "screeningRoom"

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    const-string p1, "videoChat"

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_2
    const-string p1, "voiceChat"

    .line 28
    .line 29
    :goto_0
    const-string v0, "SelectButton"

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->requireApprovalToSpeak:Z

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    const-string v2, "requireApproval"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    const-string v1, "chatType"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->liveModePickCallback:Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    iget v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->selectedMode:I

    .line 61
    .line 62
    iget-boolean v1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->requireApprovalToSpeak:Z

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, v0, v1}, Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;->onLiveModePicked(IZ)V

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/chat/BottomPopupDialog;->dismiss()V

    .line 69
    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->adapter:Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getEnabledModeList$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->enabledModeList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOffsetX$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->offsetX:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getSnapHelper$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Landroidx/recyclerview/widget/PagerSnapHelper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->snapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setOffsetX$p(Lcom/narvii/chat/ChatGoLivePickerDialog;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->offsetX:I

    .line 3
    return-void
.end method

.method public static final synthetic access$setSelectedMode$p(Lcom/narvii/chat/ChatGoLivePickerDialog;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->selectedMode:I

    .line 3
    return-void
.end method

.method public static synthetic c(Lcom/narvii/chat/ChatGoLivePickerDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->_init_$lambda$1(Lcom/narvii/chat/ChatGoLivePickerDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/chat/ChatGoLivePickerDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->_init_$lambda$0(Lcom/narvii/chat/ChatGoLivePickerDialog;Landroid/view/View;)V

    return-void
.end method

.method private final updateAgreement(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->agreeIV:Landroid/widget/ImageView;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    const p1, 0x7f080317

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    const p1, 0x7f080318

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public final getLiveModePickCallback()Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->liveModePickCallback:Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "go_live_picker"

    return-object v0
.end method

.method public final setLiveModePickCallback(Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->liveModePickCallback:Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;

    return-void
.end method
