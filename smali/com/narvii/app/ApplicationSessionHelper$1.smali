.class final Lcom/narvii/app/ApplicationSessionHelper$1;
.super Ljava/lang/Object;
.source "ApplicationSessionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/ApplicationSessionHelper;->resetApp(Lcom/narvii/app/NVContext;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Lcom/narvii/app/NVContext;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/narvii/app/ApplicationSessionHelper$1;->val$ctx:Lcom/narvii/app/NVContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/narvii/app/ApplicationSessionHelper$1;->val$ctx:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/app/ApplicationSessionHelper;->access$000(Lcom/narvii/app/NVContext;)V

    .line 150
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/narvii/app/ApplicationSessionHelper$1;->val$ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "RESET!"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
