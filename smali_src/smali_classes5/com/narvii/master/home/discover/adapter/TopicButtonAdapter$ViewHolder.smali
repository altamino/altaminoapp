.class public final Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field private final text:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;Landroid/view/View;)V
    .locals 2
    .param p1    # Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "itemView"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0a03c2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "findViewById(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 30
    .line 31
    new-instance v0, Lcom/narvii/master/home/discover/adapter/o;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p1}, Lcom/narvii/master/home/discover/adapter/o;-><init>(Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

.method private static final _init_$lambda$0(Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;ZZ)V

    .line 13
    .line 14
    const-class p1, Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;->safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Landroid/content/Intent;)V

    .line 22
    return-void
.end method

.method public static synthetic a(Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;->_init_$lambda$0(Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final getText()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;->text:Landroid/widget/TextView;

    return-object v0
.end method
