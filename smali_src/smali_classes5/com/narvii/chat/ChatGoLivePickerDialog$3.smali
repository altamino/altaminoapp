.class public final Lcom/narvii/chat/ChatGoLivePickerDialog$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatGoLivePickerDialog;-><init>(Lcom/narvii/app/NVContext;ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatGoLivePickerDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "recyclerView"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 9
    .line 10
    if-nez p2, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getSnapHelper$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->h(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    if-nez p2, :cond_1

    .line 30
    return-void

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 34
    move-result p1

    .line 35
    .line 36
    iget-object p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getEnabledModeList$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Ljava/util/List;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Ljava/lang/Number;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 50
    move-result v0

    .line 51
    .line 52
    .line 53
    invoke-static {p2, v0}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$setSelectedMode$p(Lcom/narvii/chat/ChatGoLivePickerDialog;I)V

    .line 54
    .line 55
    iget-object p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    .line 56
    .line 57
    .line 58
    invoke-static {p2}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getAdapter$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getOffsetX$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)I

    .line 65
    move-result v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p1, v0}, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->updateSelectedPosition(II)V

    .line 69
    :cond_2
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "recyclerView"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getOffsetX$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)I

    .line 20
    move-result p3

    .line 21
    sub-int/2addr p3, p2

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p3}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$setOffsetX$p(Lcom/narvii/chat/ChatGoLivePickerDialog;I)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getOffsetX$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)I

    .line 31
    move-result p3

    .line 32
    add-int/2addr p3, p2

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p3}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$setOffsetX$p(Lcom/narvii/chat/ChatGoLivePickerDialog;I)V

    .line 36
    .line 37
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getAdapter$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iget-object p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getOffsetX$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)I

    .line 47
    move-result p2

    .line 48
    const/4 p3, -0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p3, p2}, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->updateSelectedPosition(II)V

    .line 52
    return-void
.end method
