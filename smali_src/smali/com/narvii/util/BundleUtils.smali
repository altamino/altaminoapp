.class public Lcom/narvii/util/BundleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/BundleUtils$SizeTree;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static sizeAsParcel(Landroid/os/Bundle;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    .line 11
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 20
    throw p0
.end method

.method public static sizeTreeFromBundle(Landroid/os/Bundle;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/util/BundleUtils$SizeTree;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    new-instance v1, Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-static {p0}, Lcom/narvii/util/BundleUtils;->sizeAsParcel(Landroid/os/Bundle;)I

    .line 18
    move-result v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v4

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    check-cast v4, Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Lcom/narvii/util/BundleUtils;->sizeAsParcel(Landroid/os/Bundle;)I

    .line 45
    move-result v5

    .line 46
    sub-int/2addr v2, v5

    .line 47
    .line 48
    const/16 v6, 0x1388

    .line 49
    .line 50
    if-le v2, v6, :cond_0

    .line 51
    .line 52
    new-instance v6, Lcom/narvii/util/BundleUtils$SizeTree;

    .line 53
    .line 54
    .line 55
    invoke-direct {v6, v4, v2}, Lcom/narvii/util/BundleUtils$SizeTree;-><init>(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto :goto_2

    .line 62
    :cond_0
    :goto_1
    move v2, v5

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 67
    return-object v0

    .line 68
    .line 69
    .line 70
    :goto_2
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 71
    throw v0
.end method
