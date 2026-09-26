.class Lcom/narvii/blog/post/ImagePostActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/ImagePostActivity;->showActionDialog(Lcom/narvii/model/Media;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/ImagePostActivity;

.field final synthetic val$hasReorder:Z

.field final synthetic val$m:Lcom/narvii/model/Media;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/model/Media;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->val$m:Lcom/narvii/model/Media;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->val$hasReorder:Z

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->val$position:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    if-eqz p2, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    if-eq p2, p1, :cond_2

    .line 6
    const/4 p1, 0x2

    .line 7
    .line 8
    if-eq p2, p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/blog/post/ImagePostActivity;->access$100(Lcom/narvii/blog/post/ImagePostActivity;)Lcom/narvii/post/PostObject;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/blog/post/ImagePostActivity;->access$200(Lcom/narvii/blog/post/ImagePostActivity;)Lcom/narvii/post/PostObject;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/blog/post/ImagePostActivity;->access$300(Lcom/narvii/blog/post/ImagePostActivity;)Lcom/narvii/post/PostObject;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 40
    .line 41
    iget p2, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->val$position:I

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/blog/post/ImagePostActivity;->access$400(Lcom/narvii/blog/post/ImagePostActivity;)Lcom/narvii/post/PostObject;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    check-cast p2, Lcom/narvii/blog/post/BlogPost;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->val$hasReorder:Z

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/narvii/blog/post/ImagePostActivity;->B(Lcom/narvii/blog/post/ImagePostActivity;)V

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_3
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    iget-object p2, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->val$m:Lcom/narvii/model/Media;

    .line 77
    .line 78
    .line 79
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 80
    .line 81
    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 82
    .line 83
    .line 84
    invoke-static {p2, p1}, Lcom/narvii/blog/post/ImagePostActivity;->access$002(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/post/PostObject;)Lcom/narvii/post/PostObject;

    .line 85
    .line 86
    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p1}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_4
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 93
    .line 94
    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$2;->val$m:Lcom/narvii/model/Media;

    .line 95
    .line 96
    .line 97
    invoke-static {p1, p2}, Lcom/narvii/blog/post/ImagePostActivity;->A(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/model/Media;)V

    .line 98
    :goto_0
    return-void
.end method
