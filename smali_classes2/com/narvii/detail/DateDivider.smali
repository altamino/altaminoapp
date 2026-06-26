.class public Lcom/narvii/detail/DateDivider;
.super Ljava/lang/Object;
.source "DateDivider.java"


# instance fields
.field public date:Ljava/util/Date;

.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/narvii/detail/DateDivider;->date:Ljava/util/Date;

    .line 15
    iput-object p2, p0, Lcom/narvii/detail/DateDivider;->id:Ljava/lang/String;

    return-void
.end method
