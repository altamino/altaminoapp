.class public Lcom/narvii/media/color/DefaultBackgroundRecyclerView;
.super Lcom/narvii/widget/recycleview/NVRecyclerView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;,
        Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;,
        Lcom/narvii/media/color/DefaultBackgroundRecyclerView$OnColorSelectedListener;
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
.field private final adapter:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

.field private currentSelectColor:I

.field private customColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onColorSelectedListener:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$OnColorSelectedListener;


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
    sput-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    .line 8
    .line 9
    const-string v1, "#ff3d00"

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
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    .line 23
    .line 24
    const-string v1, "#e91e63"

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
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    .line 38
    .line 39
    const-string v1, "#ff8f00"

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
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    .line 53
    .line 54
    const-string v1, "#fdd835"

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
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    .line 68
    .line 69
    const-string v1, "#43a047"

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
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    .line 83
    .line 84
    const-string v1, "#0097a7"

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
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    .line 98
    .line 99
    const-string v1, "#00b0ff"

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
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    .line 113
    .line 114
    const-string v1, "#283593"

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
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    .line 128
    .line 129
    const-string v1, "#8e24aa"

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
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    .line 143
    .line 144
    const-string v1, "#4e342e"

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
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    .line 158
    .line 159
    const-string v1, "#424242"

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
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->customColorList:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;-><init>(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)V

    iput-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->adapter:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 9
    new-instance p1, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41700000    # 15.0f

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    invoke-direct {p1, p0, p2, p3}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;-><init>(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;II)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->currentSelectColor:I

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->customColorList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic d()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->builtInColorList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->adapter:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemCount()I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-gt p1, v0, :cond_2

    .line 16
    .line 17
    if-gez p1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->onColorSelectedListener:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$OnColorSelectedListener;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    return-void

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->adapter:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;->getItemColor(I)I

    .line 29
    move-result p1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->onColorSelectedListener:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$OnColorSelectedListener;

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, p1}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$OnColorSelectedListener;->onColorSelected(I)V

    .line 35
    .line 36
    iput p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->currentSelectColor:I

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->adapter:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 42
    return-void

    .line 43
    .line 44
    :cond_2
    :goto_0
    const-string p1, "DefaultBackgroundRecyclerView click with NO_POSITION"

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public removeCurrentSelectColor()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->setCurrentSelectColor(I)V

    .line 5
    return-void
.end method

.method public setCurrentSelectColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->currentSelectColor:I

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->adapter:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    return-void
.end method

.method public setCustomColorList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->customColorList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->customColorList:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->adapter:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$DefaultBackgroundAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 18
    return-void
.end method

.method public setOnColorSelectedListener(Lcom/narvii/media/color/DefaultBackgroundRecyclerView$OnColorSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView;->onColorSelectedListener:Lcom/narvii/media/color/DefaultBackgroundRecyclerView$OnColorSelectedListener;

    return-void
.end method
