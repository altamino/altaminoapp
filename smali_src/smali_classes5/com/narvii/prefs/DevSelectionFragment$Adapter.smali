.class final Lcom/narvii/prefs/DevSelectionFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/DevSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/DevSelectionFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/DevSelectionFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/prefs/DevSelectionFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    return-void
.end method

.method public static synthetic f(Lcom/narvii/prefs/DevSelectionFragment;Ljava/lang/String;Lcom/narvii/prefs/DevSelectionFragment$Adapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->getView$lambda$0(Lcom/narvii/prefs/DevSelectionFragment;Ljava/lang/String;Lcom/narvii/prefs/DevSelectionFragment$Adapter;Landroid/view/View;)V

    return-void
.end method

.method private static final getView$lambda$0(Lcom/narvii/prefs/DevSelectionFragment;Ljava/lang/String;Lcom/narvii/prefs/DevSelectionFragment$Adapter;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p3, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p3, "$content"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p3, "this$1"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/narvii/prefs/DevSelectionFragment;->access$isSingleSelection$p(Lcom/narvii/prefs/DevSelectionFragment;)Z

    .line 19
    move-result p3

    .line 20
    .line 21
    if-eqz p3, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lcom/narvii/prefs/DevSelectionFragment;->access$getSelectedItems$p(Lcom/narvii/prefs/DevSelectionFragment;)Ljava/util/List;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    .line 28
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 29
    move-result p3

    .line 30
    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lcom/narvii/prefs/DevSelectionFragment;->access$getProgressDialog$p(Lcom/narvii/prefs/DevSelectionFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    if-nez p0, :cond_0

    .line 38
    .line 39
    const-string p0, "progressDialog"

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 43
    const/4 p0, 0x0

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 47
    return-void

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-static {p0}, Lcom/narvii/prefs/DevSelectionFragment;->access$getSelectedItems$p(Lcom/narvii/prefs/DevSelectionFragment;)Ljava/util/List;

    .line 51
    move-result-object p3

    .line 52
    .line 53
    .line 54
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Lcom/narvii/prefs/DevSelectionFragment;->access$getSelectedItems$p(Lcom/narvii/prefs/DevSelectionFragment;)Ljava/util/List;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    .line 61
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-static {p0}, Lcom/narvii/prefs/DevSelectionFragment;->access$getSelectedItems$p(Lcom/narvii/prefs/DevSelectionFragment;)Ljava/util/List;

    .line 69
    move-result-object p3

    .line 70
    .line 71
    .line 72
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 73
    move-result p3

    .line 74
    .line 75
    if-eqz p3, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-static {p0}, Lcom/narvii/prefs/DevSelectionFragment;->access$getSelectedItems$p(Lcom/narvii/prefs/DevSelectionFragment;)Ljava/util/List;

    .line 79
    move-result-object p0

    .line 80
    .line 81
    .line 82
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 86
    goto :goto_0

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-static {p0}, Lcom/narvii/prefs/DevSelectionFragment;->access$getSelectedItems$p(Lcom/narvii/prefs/DevSelectionFragment;)Ljava/util/List;

    .line 90
    move-result-object p0

    .line 91
    .line 92
    .line 93
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 97
    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/prefs/DevSelectionFragment;->access$getOption$p(Lcom/narvii/prefs/DevSelectionFragment;)Lcom/narvii/prefs/model/DevOption;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "option"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    :cond_0
    iget-object v0, v0, Lcom/narvii/prefs/model/DevOption;->options:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    .line 2
    invoke-static {v0}, Lcom/narvii/prefs/DevSelectionFragment;->access$getOption$p(Lcom/narvii/prefs/DevSelectionFragment;)Lcom/narvii/prefs/model/DevOption;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "option"

    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/narvii/prefs/model/DevOption;->options:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_1
    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
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
    const v0, 0x7f0d06c6

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
    .line 26
    const v0, 0x7f0a02c7

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/widget/FontAwesomeView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->getItem(I)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    iget-object p3, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    .line 42
    .line 43
    .line 44
    invoke-static {p3}, Lcom/narvii/prefs/DevSelectionFragment;->access$getSelectedItems$p(Lcom/narvii/prefs/DevSelectionFragment;)Ljava/util/List;

    .line 45
    move-result-object p3

    .line 46
    .line 47
    .line 48
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 49
    move-result p3

    .line 50
    .line 51
    if-eqz p3, :cond_0

    .line 52
    const/4 p3, 0x0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 p3, 0x4

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    iget-object p3, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    .line 60
    .line 61
    new-instance v0, Lcom/narvii/prefs/e;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, p3, p1, p0}, Lcom/narvii/prefs/e;-><init>(Lcom/narvii/prefs/DevSelectionFragment;Ljava/lang/String;Lcom/narvii/prefs/DevSelectionFragment$Adapter;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-object p2
.end method
