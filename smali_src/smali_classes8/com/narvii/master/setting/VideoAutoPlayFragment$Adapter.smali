.class public final Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/setting/VideoAutoPlayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adapter"
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "list"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iput-object p2, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;->list:Ljava/util/List;

    .line 16
    return-void
.end method

.method public static synthetic f(Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;->getView$lambda$0(Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;ILandroid/view/View;)V

    return-void
.end method

.method private static final getView$lambda$0(Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;ILandroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    const-string v0, "null cannot be cast to non-null type com.narvii.master.setting.VideoAutoPlayFragment"

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    check-cast p2, Lcom/narvii/master/setting/VideoAutoPlayFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Lcom/narvii/master/setting/VideoAutoPlayFragment;->access$getCurrentCond$p(Lcom/narvii/master/setting/VideoAutoPlayFragment;)I

    .line 18
    move-result p2

    .line 19
    .line 20
    if-eq p2, p1, :cond_0

    .line 21
    .line 22
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    check-cast p2, Lcom/narvii/master/setting/VideoAutoPlayFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {p2, p1}, Lcom/narvii/master/setting/VideoAutoPlayFragment;->access$setCurrentCond$p(Lcom/narvii/master/setting/VideoAutoPlayFragment;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;->list:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;->list:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d06c5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    const-string p3, "null cannot be cast to non-null type android.widget.FrameLayout"

    .line 10
    .line 11
    .line 12
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    check-cast p2, Landroid/widget/FrameLayout;

    .line 15
    .line 16
    .line 17
    const p3, 0x7f0a0e51

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p3

    .line 22
    .line 23
    check-cast p3, Landroid/widget/TextView;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;->list:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 37
    .line 38
    instance-of p3, p3, Lcom/narvii/master/setting/VideoAutoPlayFragment;

    .line 39
    .line 40
    if-eqz p3, :cond_1

    .line 41
    .line 42
    .line 43
    const p3, 0x7f0a02c7

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p3

    .line 48
    .line 49
    check-cast p3, Lcom/narvii/widget/FontAwesomeView;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 52
    .line 53
    const-string v1, "null cannot be cast to non-null type com.narvii.master.setting.VideoAutoPlayFragment"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    check-cast v0, Lcom/narvii/master/setting/VideoAutoPlayFragment;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lcom/narvii/master/setting/VideoAutoPlayFragment;->access$getCurrentCond$p(Lcom/narvii/master/setting/VideoAutoPlayFragment;)I

    .line 62
    move-result v0

    .line 63
    .line 64
    if-ne v0, p1, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_0
    const/16 v0, 0x8

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    new-instance p3, Lcom/narvii/master/setting/a;

    .line 74
    .line 75
    .line 76
    invoke-direct {p3, p0, p1}, Lcom/narvii/master/setting/a;-><init>(Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_1
    return-object p2
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
