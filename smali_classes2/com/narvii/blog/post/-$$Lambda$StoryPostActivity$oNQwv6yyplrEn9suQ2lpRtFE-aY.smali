.class public final synthetic Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$oNQwv6yyplrEn9suQ2lpRtFE-aY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/blog/post/StoryPostActivity;

.field private final synthetic f$1:Lcom/narvii/widget/ACMAlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/blog/post/StoryPostActivity;Lcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$oNQwv6yyplrEn9suQ2lpRtFE-aY;->f$0:Lcom/narvii/blog/post/StoryPostActivity;

    iput-object p2, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$oNQwv6yyplrEn9suQ2lpRtFE-aY;->f$1:Lcom/narvii/widget/ACMAlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$oNQwv6yyplrEn9suQ2lpRtFE-aY;->f$0:Lcom/narvii/blog/post/StoryPostActivity;

    iget-object v1, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$oNQwv6yyplrEn9suQ2lpRtFE-aY;->f$1:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/blog/post/StoryPostActivity;->lambda$onPostLoaded$2$StoryPostActivity(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method
