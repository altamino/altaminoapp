.class Lcom/narvii/widget/MoodView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/MoodView;

.field final synthetic val$isMemberShip:Z

.field final synthetic val$sticker:Lcom/narvii/model/Sticker;


# direct methods
.method constructor <init>(Lcom/narvii/widget/MoodView;Lcom/narvii/model/Sticker;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/MoodView$3;->this$0:Lcom/narvii/widget/MoodView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/widget/MoodView$3;->val$sticker:Lcom/narvii/model/Sticker;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/widget/MoodView$3;->val$isMemberShip:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/MoodView$3;->this$0:Lcom/narvii/widget/MoodView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/widget/MoodView;->a(Lcom/narvii/widget/MoodView;)Lcom/narvii/model/User;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/widget/MoodView$3;->this$0:Lcom/narvii/widget/MoodView;

    .line 17
    .line 18
    iget-object p2, p0, Lcom/narvii/widget/MoodView$3;->val$sticker:Lcom/narvii/model/Sticker;

    .line 19
    .line 20
    iget-boolean p3, p0, Lcom/narvii/widget/MoodView$3;->val$isMemberShip:Z

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2, p3}, Lcom/narvii/widget/MoodView;->b(Lcom/narvii/widget/MoodView;Lcom/narvii/model/Sticker;Z)V

    .line 24
    :cond_0
    return-void
.end method

.method public onPostExecute(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/MoodView$3;->this$0:Lcom/narvii/widget/MoodView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/MoodView;->a(Lcom/narvii/widget/MoodView;)Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    move-result p2

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/widget/MoodView$3;->this$0:Lcom/narvii/widget/MoodView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->getMoodColor()I

    .line 20
    move-result p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Lcom/narvii/widget/MoodView;->updateMoodColor(I)V

    .line 24
    :cond_0
    return-void
.end method

.method public onProgressUpdate(IILjava/lang/String;)V
    .locals 0

    return-void
.end method
