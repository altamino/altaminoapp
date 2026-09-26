.class public final synthetic Lcom/narvii/account/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/narvii/account/GoogleLoginFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/GoogleLoginFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/s;->a:Lcom/narvii/account/GoogleLoginFragment;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/s;->a:Lcom/narvii/account/GoogleLoginFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/narvii/account/GoogleLoginFragment;->v(Lcom/narvii/account/GoogleLoginFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
