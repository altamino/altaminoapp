.class public final synthetic Lcom/narvii/account/-$$Lambda$EmailSignupFragment$g8-05u0Cvg849N6QPgfBVQi2OH0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/account/EmailSignupFragment;

.field private final synthetic f$1:Lcom/narvii/widget/ACMAlertDialog;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/EmailSignupFragment;Lcom/narvii/widget/ACMAlertDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$g8-05u0Cvg849N6QPgfBVQi2OH0;->f$0:Lcom/narvii/account/EmailSignupFragment;

    iput-object p2, p0, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$g8-05u0Cvg849N6QPgfBVQi2OH0;->f$1:Lcom/narvii/widget/ACMAlertDialog;

    iput-object p3, p0, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$g8-05u0Cvg849N6QPgfBVQi2OH0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$g8-05u0Cvg849N6QPgfBVQi2OH0;->f$0:Lcom/narvii/account/EmailSignupFragment;

    iget-object v1, p0, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$g8-05u0Cvg849N6QPgfBVQi2OH0;->f$1:Lcom/narvii/widget/ACMAlertDialog;

    iget-object v2, p0, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$g8-05u0Cvg849N6QPgfBVQi2OH0;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/account/EmailSignupFragment;->lambda$handleAlreadyRegistered$2$EmailSignupFragment(Lcom/narvii/widget/ACMAlertDialog;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
