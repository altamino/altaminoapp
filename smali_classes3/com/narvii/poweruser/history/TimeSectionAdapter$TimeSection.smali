.class public Lcom/narvii/poweruser/history/TimeSectionAdapter$TimeSection;
.super Ljava/lang/Object;
.source "TimeSectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/history/TimeSectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeSection"
.end annotation


# instance fields
.field final time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/narvii/poweruser/history/TimeSectionAdapter$TimeSection;->time:Ljava/lang/String;

    return-void
.end method
