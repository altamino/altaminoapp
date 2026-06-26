.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;
.super Lcom/narvii/comment/list/CommentListAdapter;
.source "SharedPhotoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommentAdapter"
.end annotation


# instance fields
.field private VIEW_ALL_COMMENTS:Lcom/narvii/util/Tag;

.field animated:Z

.field private final expands:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field requestFinished:Z

.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 988
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 989
    invoke-direct {p0, p2}, Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x0

    .line 980
    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->animated:Z

    .line 982
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->expands:Ljava/util/HashSet;

    .line 984
    new-instance p2, Lcom/narvii/util/Tag;

    const-string v0, "view_all_comments"

    invoke-direct {p2, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->VIEW_ALL_COMMENTS:Lcom/narvii/util/Tag;

    .line 986
    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->requestFinished:Z

    return-void
.end method

.method private canAdd(Ljava/util/List;)Z
    .locals 1

    .line 1148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected buildList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Comment;",
            ">;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1116
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1119
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Comment;

    .line 1121
    invoke-direct {p0, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->canAdd(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1122
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    iget-object v2, v1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1127
    iget-object v2, v1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 1128
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1129
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Comment;

    .line 1130
    invoke-virtual {v1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    .line 1131
    invoke-direct {p0, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->canAdd(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1132
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1139
    :cond_3
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-static {p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->access$000(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)Lcom/narvii/model/SharedFile;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1140
    iget p1, p1, Lcom/narvii/model/SharedFile;->commentsCount:I

    if-lez p1, :cond_4

    iget-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->animated:Z

    if-eqz p1, :cond_4

    .line 1141
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->VIEW_ALL_COMMENTS:Lcom/narvii/util/Tag;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method protected getParent()Lcom/narvii/model/NVObject;
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->access$000(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)Lcom/narvii/model/SharedFile;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1059
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/Comment;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1062
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Comment;

    .line 1063
    iget v0, p1, Lcom/narvii/model/Comment;->type:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1064
    :goto_0
    iget v4, p1, Lcom/narvii/model/Comment;->type:I

    if-ne v4, v2, :cond_1

    invoke-virtual {p1}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const v4, 0x7f0b0439

    .line 1066
    invoke-virtual {p0, v4, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09028b

    .line 1067
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/ExpandTextView;

    .line 1068
    iget-object v4, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    if-nez v4, :cond_2

    const-string v4, ""

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-eqz v2, :cond_3

    .line 1069
    iget-object v5, v2, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v2, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    const v6, 0x7f0f1028

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    if-eqz v0, :cond_4

    .line 1070
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f029e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    iget-object v0, p1, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    .line 1072
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1073
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1074
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iget-object v5, v5, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->sharedPhotoColorHelper:Lcom/narvii/sharedfolder/SharedPhotoColorHelper;

    invoke-virtual {v5, v4}, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->getNickNameColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v0, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1075
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v1, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1076
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1079
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->isSubComment(Lcom/narvii/model/Comment;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 1080
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v2, v4, :cond_7

    .line 1081
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_5

    .line 1083
    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1086
    :goto_5
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090404

    .line 1087
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->expands:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    .line 1089
    invoke-virtual {p3, p1}, Lcom/narvii/widget/ExpandTextView;->setExpand(Z)V

    return-object p2

    .line 1092
    :cond_8
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->VIEW_ALL_COMMENTS:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_b

    const p1, 0x7f0b0576

    .line 1093
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090c96

    .line 1094
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1095
    iget-object p3, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-static {p3}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->access$000(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)Lcom/narvii/model/SharedFile;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 1097
    iget v0, p3, Lcom/narvii/model/SharedFile;->commentsCount:I

    if-gtz v0, :cond_9

    const/16 v1, 0x8

    :cond_9
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1098
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p3, p3, Lcom/narvii/model/SharedFile;->commentsCount:I

    const v1, 0x7f0f02ab

    const v2, 0x7f0f1165

    invoke-static {v0, p3, v1, v2}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    :cond_a
    new-instance p2, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter$1;

    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    .line 1108
    :cond_b
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 1045
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 1046
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->animated:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->requestFinished:Z

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentList:Lcom/narvii/widget/NVListView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1048
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->animated:Z

    .line 1049
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 1051
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    .line 1050
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1052
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentList:Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1034
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->requestFinished:Z

    .line 1035
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 999
    instance-of p1, p3, Lcom/narvii/model/Comment;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p4, 0x7f090404

    if-ne p1, p4, :cond_1

    .line 1000
    check-cast p3, Lcom/narvii/model/Comment;

    .line 1001
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->expands:Ljava/util/HashSet;

    invoke-virtual {p3}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1002
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->expands:Ljava/util/HashSet;

    invoke-virtual {p3}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1004
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->notifyDataSetChanged()V

    return p2

    .line 1007
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-static {p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->access$800(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V

    return p2
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentListResponse;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1028
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->requestFinished:Z

    .line 1029
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 978
    check-cast p2, Lcom/narvii/model/api/CommentListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentListResponse;I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1021
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const-string v1, "animated"

    .line 1022
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->animated:Z

    const-string v1, "requestFinished"

    .line 1023
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->requestFinished:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1013
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 1014
    iget-boolean v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->animated:Z

    const-string v2, "animated"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1015
    iget-boolean v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->animated:Z

    const-string v2, "requestFinished"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onViewStickerClicked(Landroid/content/Intent;)V
    .locals 2

    .line 1153
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    const/16 v1, 0x6f

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected saveInstanceState()Z
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->access$400(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)Z

    move-result v0

    return v0
.end method
