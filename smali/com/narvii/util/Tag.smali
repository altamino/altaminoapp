.class public Lcom/narvii/util/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/narvii/util/Tag;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/narvii/util/Tag;->name:Ljava/lang/String;

    return-object v0
.end method
