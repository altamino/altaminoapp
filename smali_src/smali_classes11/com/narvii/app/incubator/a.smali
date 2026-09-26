.class public final synthetic Lcom/narvii/app/incubator/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lai/medialab/medialabads2/MediaLabUidListener;


# instance fields
.field public final synthetic a:Lcom/narvii/app/incubator/IncubatorApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/app/incubator/IncubatorApplication;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/app/incubator/a;->a:Lcom/narvii/app/incubator/IncubatorApplication;

    return-void
.end method


# virtual methods
.method public final onUidReady(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/app/incubator/a;->a:Lcom/narvii/app/incubator/IncubatorApplication;

    invoke-static {v0, p1}, Lcom/narvii/app/incubator/IncubatorApplication;->i(Lcom/narvii/app/incubator/IncubatorApplication;Ljava/lang/String;)V

    return-void
.end method
