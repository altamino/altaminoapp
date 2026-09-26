.class public final Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field private final binding:Lcom/narvii/amino/databinding/IncubatorItemCreateAminoBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hint:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;Lcom/narvii/amino/databinding/IncubatorItemCreateAminoBinding;)V
    .locals 2
    .param p1    # Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/amino/databinding/IncubatorItemCreateAminoBinding;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "binding"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/narvii/amino/databinding/IncubatorItemCreateAminoBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "getRoot(...)"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    .line 21
    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;->binding:Lcom/narvii/amino/databinding/IncubatorItemCreateAminoBinding;

    .line 22
    .line 23
    iget-object v0, p2, Lcom/narvii/amino/databinding/IncubatorItemCreateAminoBinding;->hint:Lcom/narvii/widget/AutoSizingTextView;

    .line 24
    .line 25
    const-string v1, "hint"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;->hint:Landroid/widget/TextView;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 34
    .line 35
    iget-object p2, p2, Lcom/narvii/amino/databinding/IncubatorItemCreateAminoBinding;->createAmino:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    new-instance v0, Lcom/narvii/master/home/discover/adapter/e;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p1}, Lcom/narvii/master/home/discover/adapter/e;-><init>(Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method private static final _init_$lambda$0(Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;Landroid/view/View;)V
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
    sget-object p1, Lcom/narvii/logging/ActSemantic;->createAmino:Lcom/narvii/logging/ActSemantic;

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
    .line 15
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->getMasterHelper()Lcom/narvii/master/MasterHelper;

    .line 16
    move-result-object p0

    .line 17
    const/4 p1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/master/MasterHelper;->createAmino(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static synthetic a(Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;->_init_$lambda$0(Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;->binding:Lcom/narvii/amino/databinding/IncubatorItemCreateAminoBinding;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/amino/databinding/IncubatorItemCreateAminoBinding;->hint:Lcom/narvii/widget/AutoSizingTextView;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    const v2, 0x7f120367

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    return-void
.end method

.method public final getHint()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;->hint:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setHint(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;->hint:Landroid/widget/TextView;

    return-void
.end method
