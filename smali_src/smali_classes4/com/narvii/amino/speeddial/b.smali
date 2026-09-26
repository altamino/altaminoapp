.class public final synthetic Lcom/narvii/amino/speeddial/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/amino/speeddial/b;->a:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/speeddial/b;->a:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-static {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->a(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V

    return-void
.end method
