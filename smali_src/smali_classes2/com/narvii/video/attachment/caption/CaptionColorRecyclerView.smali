.class public Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;,
        Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;
    }
.end annotation


# static fields
.field private static builtInColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

.field private currentSelectColor:I

.field private enabled:Z

.field private onColorSelectedListener:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;

.field private supportDisable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 8
    .line 9
    const-string v1, "#FFFFFF"

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 23
    .line 24
    const-string v1, "#000000"

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 28
    move-result v1

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 38
    .line 39
    const-string v1, "#54515d"

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 43
    move-result v1

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 53
    .line 54
    const-string v1, "#f2ff41"

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 58
    move-result v1

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 68
    .line 69
    const-string v1, "#0076FF"

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 73
    move-result v1

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 83
    .line 84
    const-string v1, "#ffc102"

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 88
    move-result v1

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 98
    .line 99
    const-string v1, "#ff6809"

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 103
    move-result v1

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 113
    .line 114
    const-string v1, "#f20d57"

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 118
    move-result v1

    .line 119
    .line 120
    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    .line 125
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 128
    .line 129
    const-string v1, "#1598ff"

    .line 130
    .line 131
    .line 132
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 133
    move-result v1

    .line 134
    .line 135
    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    move-result-object v1

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 143
    .line 144
    const-string v1, "#8134ff"

    .line 145
    .line 146
    .line 147
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 148
    move-result v1

    .line 149
    .line 150
    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 158
    .line 159
    const-string v1, "#a10abf"

    .line 160
    .line 161
    .line 162
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 163
    move-result v1

    .line 164
    .line 165
    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    move-result-object v1

    .line 168
    .line 169
    .line 170
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 173
    .line 174
    const-string v1, "#fe37ba"

    .line 175
    .line 176
    .line 177
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 178
    move-result v1

    .line 179
    .line 180
    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    move-result-object v1

    .line 183
    .line 184
    .line 185
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 188
    .line 189
    const-string v1, "#ff9dff"

    .line 190
    .line 191
    .line 192
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 193
    move-result v1

    .line 194
    .line 195
    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    move-result-object v1

    .line 198
    .line 199
    .line 200
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 203
    .line 204
    const-string v1, "#22f39e"

    .line 205
    .line 206
    .line 207
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 208
    move-result v1

    .line 209
    .line 210
    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    move-result-object v1

    .line 213
    .line 214
    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 218
    .line 219
    const-string v1, "#018c86"

    .line 220
    .line 221
    .line 222
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 223
    move-result v1

    .line 224
    .line 225
    .line 226
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    move-result-object v1

    .line 228
    .line 229
    .line 230
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 233
    .line 234
    const-string v1, "#00477f"

    .line 235
    .line 236
    .line 237
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 238
    move-result v1

    .line 239
    .line 240
    .line 241
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    move-result-object v1

    .line 243
    .line 244
    .line 245
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    .line 248
    .line 249
    const-string v1, "#036100"

    .line 250
    .line 251
    .line 252
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 253
    move-result v1

    .line 254
    .line 255
    .line 256
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    move-result-object v1

    .line 258
    .line 259
    .line 260
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->supportDisable:Z

    .line 3
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;-><init>(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)V

    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->adapter:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 6
    new-instance p1, Lcom/narvii/widget/SpaceItemDecoration;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/SpaceItemDecoration;-><init>(I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->supportDisable:Z

    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->enabled:Z

    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->enabled:Z

    .line 3
    return p1
.end method

.method static synthetic access$200(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->currentSelectColor:I

    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->currentSelectColor:I

    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->onColorSelectedListener:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->adapter:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    .line 3
    return-object p0
.end method

.method static synthetic access$500()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->builtInColorList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public setCurrentSelectColor(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->setCurrentSelectColor(IZ)V

    return-void
.end method

.method public setCurrentSelectColor(IZ)V
    .locals 1

    const/16 v0, 0xff

    .line 2
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->o(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->currentSelectColor:I

    iput-boolean p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->enabled:Z

    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->adapter:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnColorSelectedListener(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->onColorSelectedListener:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;

    return-void
.end method

.method public setSupportDisable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->supportDisable:Z

    return-void
.end method
