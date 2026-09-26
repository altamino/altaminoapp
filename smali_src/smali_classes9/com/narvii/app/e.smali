.class public final synthetic Lcom/narvii/app/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;


# instance fields
.field public final synthetic a:Lcom/narvii/app/NVActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/app/e;->a:Lcom/narvii/app/NVActivity;

    return-void
.end method


# virtual methods
.method public final onAffiliationChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/app/e;->a:Lcom/narvii/app/NVActivity;

    invoke-static {v0}, Lcom/narvii/app/NVActivity;->h(Lcom/narvii/app/NVActivity;)V

    return-void
.end method
