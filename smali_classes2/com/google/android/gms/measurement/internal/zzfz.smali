.class public final Lcom/google/android/gms/measurement/internal/zzfz;
.super Lcom/google/android/gms/measurement/internal/zzfs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzft;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfs;-><init>(Lcom/google/android/gms/measurement/internal/zzft;)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbt$zzd;
    .locals 4

    .line 35
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcf;->zzxi:[Lcom/google/android/gms/internal/measurement/zzbt$zzd;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbt$zzd;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static zza(Ljava/util/BitSet;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x40

    div-int/2addr v0, v1

    .line 360
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    const-wide/16 v5, 0x0

    move-wide v6, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    shl-int/lit8 v8, v4, 0x6

    add-int/2addr v8, v5

    .line 364
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 365
    invoke-virtual {p0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 368
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private static zza(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "  "

    .line 320
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzbz;)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    .line 292
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v0, p3, Lcom/google/android/gms/internal/measurement/zzbz;->zzwi:Ljava/lang/Boolean;

    const-string v1, "complement"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 294
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzaa()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    iget-object v1, p3, Lcom/google/android/gms/internal/measurement/zzbz;->zzwj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "param_name"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, p2, 0x1

    .line 295
    iget-object v1, p3, Lcom/google/android/gms/internal/measurement/zzbz;->zzwg:Lcom/google/android/gms/internal/measurement/zzcc;

    const-string/jumbo v2, "}\n"

    if-eqz v1, :cond_4

    .line 297
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "string_filter"

    .line 298
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " {\n"

    .line 299
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzcc;->zzws:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    if-eqz v3, :cond_1

    .line 301
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "match_type"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 302
    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzcc;->zzwt:Ljava/lang/String;

    const-string v4, "expression"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 303
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzcc;->zzwu:Ljava/lang/Boolean;

    const-string v4, "case_sensitive"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 304
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzcc;->zzwv:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    .line 305
    invoke-static {p1, v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "expression_list {\n"

    .line 306
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzcc;->zzwv:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    add-int/lit8 v6, v0, 0x2

    .line 308
    invoke-static {p1, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    .line 309
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    .line 310
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 312
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_3
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    .line 314
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_4
    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/zzbz;->zzwh:Lcom/google/android/gms/internal/measurement/zzca;

    const-string v1, "number_filter"

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzca;)V

    .line 316
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    .line 317
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbt$zzf;Ljava/lang/String;)V
    .locals 8

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x3

    .line 219
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    .line 220
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " {\n"

    .line 221
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbt$zzf;->zzid()I

    move-result p3

    const/16 v0, 0xa

    const/4 v1, 0x4

    const-string v2, ", "

    const/4 v3, 0x0

    if-eqz p3, :cond_3

    .line 223
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    const-string p3, "results: "

    .line 224
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbt$zzf;->zzic()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_1

    .line 228
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    :cond_3
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbt$zzf;->zzib()I

    move-result p3

    if-eqz p3, :cond_6

    .line 233
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    const-string p3, "status: "

    .line 234
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbt$zzf;->zzia()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_4

    .line 238
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_1

    .line 241
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzaf()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/google/android/gms/measurement/internal/zzt;->zzt(Ljava/lang/String;)Z

    move-result p3

    const-string/jumbo p5, "}\n"

    if-eqz p3, :cond_11

    .line 243
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbt$zzf;->zzif()I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_b

    .line 244
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    const-string p3, "dynamic_filter_timestamps: {"

    .line 245
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbt$zzf;->zzie()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v4, 0x0

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbt$zzb;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_7

    .line 249
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zzhd()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->getIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    :cond_8
    move-object v4, v0

    :goto_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    .line 251
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zzhe()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zzhf()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_4

    :cond_9
    move-object v4, v0

    :goto_4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_2

    .line 254
    :cond_a
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_b
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbt$zzf;->zzih()I

    move-result p3

    if-eqz p3, :cond_11

    .line 256
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    const-string p3, "sequence_filter_timestamps: {"

    .line 257
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbt$zzf;->zzig()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 p4, 0x0

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbt$zzg;

    add-int/lit8 v4, p4, 0x1

    if-eqz p4, :cond_c

    .line 261
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbt$zzg;->zzhd()Z

    move-result p4

    if-eqz p4, :cond_d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbt$zzg;->getIndex()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_6

    :cond_d
    move-object p4, v0

    :goto_6
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ": ["

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbt$zzg;->zzil()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v1, 0x0

    :goto_7
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-int/lit8 v7, v1, 0x1

    if-eqz v1, :cond_e

    .line 266
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_e
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v7

    goto :goto_7

    :cond_f
    const-string p4, "]"

    .line 269
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p4, v4

    goto :goto_5

    .line 271
    :cond_10
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_11
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    .line 273
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzca;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    .line 278
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " {\n"

    .line 279
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzca;->zzwk:Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

    if-eqz p3, :cond_1

    .line 281
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    const-string v0, "comparison_type"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 282
    :cond_1
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzca;->zzwl:Ljava/lang/Boolean;

    const-string v0, "match_as_float"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 283
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzca;->zzwm:Ljava/lang/String;

    const-string v0, "comparison_value"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 284
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzca;->zzwn:Ljava/lang/String;

    const-string v0, "min_comparison_value"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 285
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzca;->zzwo:Ljava/lang/String;

    const-string p4, "max_comparison_value"

    invoke-static {p1, p2, p4, p3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 286
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo p2, "}\n"

    .line 287
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 325
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    .line 326
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    .line 327
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 329
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method static zza(Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .line 356
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    if-ge p1, v0, :cond_0

    div-int/lit8 v0, p1, 0x40

    .line 357
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    rem-int/lit8 p1, p1, 0x40

    shl-long p0, v2, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static zza([Lcom/google/android/gms/internal/measurement/zzbt$zzd;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzbt$zzd;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 50
    aget-object v2, p0, v1

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzez;->zzmh()Lcom/google/android/gms/internal/measurement/zzez$zza;

    move-result-object v2

    .line 52
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;->zzhw()Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;->zzhv()Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;->zzhx()Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    .line 55
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 56
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;->zzaj(J)Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    goto :goto_1

    .line 57
    :cond_0
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 58
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;->zzbx(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    goto :goto_1

    .line 59
    :cond_1
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_2

    .line 60
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;->zzb(D)Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    .line 61
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzmr()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzbt$zzd;

    aput-object p1, p0, v1

    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_4
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzbt$zzd;

    .line 65
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbt$zzd;->zzht()Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;->zzbw(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    move-result-object p1

    .line 67
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 68
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;->zzaj(J)Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    goto :goto_2

    .line 69
    :cond_5
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 70
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;->zzbx(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    goto :goto_2

    .line 71
    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 72
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;->zzb(D)Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    .line 73
    :cond_7
    :goto_2
    array-length p0, p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzez$zza;->zzmr()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzbt$zzd;

    aput-object p1, v1, p0

    return-object v1
.end method

.method static zzb(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbt$zzd;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbt$zzd;->zzhk()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbt$zzd;->zzhl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbt$zzd;->zzhn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbt$zzd;->zzho()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbt$zzd;->zzhq()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbt$zzd;->zzhr()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static zzbl(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    .line 353
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x136

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .line 444
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzct;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza([B)J
    .locals 2

    .line 374
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzab()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzq()V

    .line 376
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzgd;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzad()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzda()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    const-string v0, "Failed to get MD5"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaq(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 380
    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 381
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzd([B)J

    move-result-wide v0

    return-wide v0
.end method

.method final zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 333
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 334
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 335
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 336
    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_0
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 340
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzad()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzda()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    const-string p2, "Failed to load parcelable from buffer"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaq(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 343
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzby;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nevent_filter {\n"

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzby;->zzwa:Ljava/lang/Integer;

    const/4 v2, 0x0

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 196
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzaa()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzby;->zzwb:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "event_name"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 197
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzby;->zzwe:Lcom/google/android/gms/internal/measurement/zzca;

    const/4 v3, 0x1

    const-string v4, "event_count_filter"

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzca;)V

    const-string v1, "  filters {\n"

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzby;->zzwc:[Lcom/google/android/gms/internal/measurement/zzbz;

    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    const/4 v5, 0x2

    .line 200
    invoke-direct {p0, v0, v5, v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzbz;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_1
    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo p1, "}\n}\n"

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;Ljava/lang/Object;)V
    .locals 2

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;->zzhv()Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;->zzhw()Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;->zzhx()Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    .line 16
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 17
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;->zzbx(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    return-void

    .line 18
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 19
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;->zzaj(J)Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    return-void

    .line 20
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 21
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;->zzb(D)Lcom/google/android/gms/internal/measurement/zzbt$zzd$zza;

    return-void

    .line 22
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzad()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzda()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) event param value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzbt$zzh$zza;Ljava/lang/Object;)V
    .locals 2

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbt$zzh$zza;->zziw()Lcom/google/android/gms/internal/measurement/zzbt$zzh$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbt$zzh$zza;->zzix()Lcom/google/android/gms/internal/measurement/zzbt$zzh$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbt$zzh$zza;->zziy()Lcom/google/android/gms/internal/measurement/zzbt$zzh$zza;

    .line 6
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbt$zzh$zza;->zzbz(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbt$zzh$zza;

    return-void

    .line 8
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbt$zzh$zza;->zzao(J)Lcom/google/android/gms/internal/measurement/zzbt$zzh$zza;

    return-void

    .line 10
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbt$zzh$zza;->zzc(D)Lcom/google/android/gms/internal/measurement/zzbt$zzh$zza;

    return-void

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzad()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzda()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) user attribute value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzcg;)[B
    .locals 3

    .line 24
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziv;->zzly()I

    move-result v0

    .line 25
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 27
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzin;->zzk([BII)Lcom/google/android/gms/internal/measurement/zzin;

    move-result-object v1

    .line 29
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzcg;->zza(Lcom/google/android/gms/internal/measurement/zzin;)V

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzin;->zzlk()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzad()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzda()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    const-string v1, "Data loss. Failed to serialize batch"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic zzaa()Lcom/google/android/gms/measurement/internal/zzas;
    .locals 1

    .line 445
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzct;->zzaa()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzab()Lcom/google/android/gms/measurement/internal/zzgd;
    .locals 1

    .line 446
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzct;->zzab()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzac()Lcom/google/android/gms/measurement/internal/zzbt;
    .locals 1

    .line 447
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzct;->zzac()Lcom/google/android/gms/measurement/internal/zzbt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzad()Lcom/google/android/gms/measurement/internal/zzau;
    .locals 1

    .line 448
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzct;->zzad()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzae()Lcom/google/android/gms/measurement/internal/zzbf;
    .locals 1

    .line 449
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzct;->zzae()Lcom/google/android/gms/measurement/internal/zzbf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaf()Lcom/google/android/gms/measurement/internal/zzt;
    .locals 1

    .line 450
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzct;->zzaf()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzag()Lcom/google/android/gms/measurement/internal/zzq;
    .locals 1

    .line 451
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzct;->zzag()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    return-object v0
.end method

.method protected final zzak()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzcb;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzcb;->zzwa:Ljava/lang/Integer;

    const/4 v2, 0x0

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 211
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzaa()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzcb;->zzwq:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "property_name"

    .line 212
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 213
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzcb;->zzwr:Lcom/google/android/gms/internal/measurement/zzbz;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzbz;)V

    const-string/jumbo p1, "}\n"

    .line 214
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzcg;)Ljava/lang/String;
    .locals 25

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\nbatch {\n"

    .line 76
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    .line 77
    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/zzcg;->zzxl:[Lcom/google/android/gms/internal/measurement/zzch;

    const-string/jumbo v8, "}\n"

    if-eqz v7, :cond_12

    .line 78
    array-length v9, v7

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_12

    aget-object v12, v7, v11

    if-eqz v12, :cond_11

    if-eqz v12, :cond_11

    const/4 v13, 0x1

    .line 82
    invoke-static {v6, v13}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "bundle {\n"

    .line 83
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzxn:Ljava/lang/Integer;

    const-string v1, "protocol_version"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzxv:Ljava/lang/String;

    const-string v1, "platform"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 86
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzxz:Ljava/lang/Long;

    const-string v1, "gmp_version"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 87
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzya:Ljava/lang/Long;

    const-string/jumbo v1, "uploading_gmp_version"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 88
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzys:Ljava/lang/Long;

    const-string v1, "dynamite_version"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 89
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzyl:Ljava/lang/Long;

    const-string v1, "config_version"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzch:Ljava/lang/String;

    const-string v1, "gmp_app_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 91
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzxf:Ljava/lang/String;

    const-string v1, "admob_app_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 92
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzcf:Ljava/lang/String;

    const-string v1, "app_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 93
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzcn:Ljava/lang/String;

    const-string v1, "app_version"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 94
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzyh:Ljava/lang/Integer;

    const-string v1, "app_version_major"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 95
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzcj:Ljava/lang/String;

    const-string v1, "firebase_instance_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 96
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzyd:Ljava/lang/Long;

    const-string v1, "dev_cert_hash"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 97
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzcp:Ljava/lang/String;

    const-string v1, "app_store"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 98
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzxq:Ljava/lang/Long;

    const-string/jumbo v1, "upload_timestamp_millis"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 99
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzxr:Ljava/lang/Long;

    const-string v1, "start_timestamp_millis"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 100
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzxs:Ljava/lang/Long;

    const-string v1, "end_timestamp_millis"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 101
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzxt:Ljava/lang/Long;

    const-string v1, "previous_bundle_start_timestamp_millis"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 102
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzxu:Ljava/lang/Long;

    const-string v1, "previous_bundle_end_timestamp_millis"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 103
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzcg:Ljava/lang/String;

    const-string v1, "app_instance_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 104
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzyb:Ljava/lang/String;

    const-string v1, "resettable_device_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 105
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzyk:Ljava/lang/String;

    const-string v1, "device_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 106
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzyn:Ljava/lang/String;

    const-string v1, "ds_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 107
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzyc:Ljava/lang/Boolean;

    const-string v1, "limited_ad_tracking"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzxw:Ljava/lang/String;

    const-string v1, "os_version"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 109
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzxx:Ljava/lang/String;

    const-string v1, "device_model"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 110
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzex:Ljava/lang/String;

    const-string/jumbo v1, "user_default_language"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 111
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzxy:Ljava/lang/Integer;

    const-string v1, "time_zone_offset_minutes"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 112
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzye:Ljava/lang/Integer;

    const-string v1, "bundle_sequential_index"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 113
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzyf:Ljava/lang/Boolean;

    const-string v1, "service_upload"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 114
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzdn:Ljava/lang/String;

    const-string v1, "health_monitor"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 115
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzym:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 116
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzym:Ljava/lang/Long;

    const-string v1, "android_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 117
    :cond_0
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzyp:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const-string v1, "retry_counter"

    .line 118
    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 119
    :cond_1
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzxp:[Lcom/google/android/gms/internal/measurement/zzbt$zzh;

    const-string v14, "double_value"

    const-string v15, "int_value"

    const-string v5, "string_value"

    const-string v4, "name"

    const/16 v16, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    .line 122
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    aget-object v17, v0, v2

    if-eqz v17, :cond_5

    .line 124
    invoke-static {v6, v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v10, "user_property {\n"

    .line 125
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbt$zzh;->zzis()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbt$zzh;->zzit()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_2

    :cond_2
    move-object/from16 v10, v16

    :goto_2
    const-string v13, "set_timestamp_millis"

    .line 128
    invoke-static {v6, v3, v13, v10}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzaa()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v10

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbt$zzh;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/google/android/gms/measurement/internal/zzas;->zzan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 131
    invoke-static {v6, v3, v4, v10}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 132
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbt$zzh;->zzhl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v3, v5, v10}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 133
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbt$zzh;->zzhn()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbt$zzh;->zzho()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_3

    :cond_3
    move-object/from16 v10, v16

    :goto_3
    invoke-static {v6, v3, v15, v10}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 135
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbt$zzh;->zzhq()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbt$zzh;->zzhr()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_4

    :cond_4
    move-object/from16 v10, v16

    .line 136
    :goto_4
    invoke-static {v6, v3, v14, v10}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 137
    invoke-static {v6, v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    .line 138
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    const/4 v13, 0x1

    goto :goto_1

    .line 140
    :cond_6
    iget-object v10, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzyg:[Lcom/google/android/gms/internal/measurement/zzbt$zza;

    iget-object v13, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzcf:Ljava/lang/String;

    if-eqz v10, :cond_a

    .line 143
    array-length v2, v10

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_a

    aget-object v17, v10, v1

    if-eqz v17, :cond_9

    .line 145
    invoke-static {v6, v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "audience_membership {\n"

    .line 146
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbt$zza;->zzgu()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 148
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbt$zza;->zzgv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v19, v1

    const-string v1, "audience_id"

    invoke-static {v6, v3, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    move/from16 v19, v1

    .line 149
    :goto_6
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbt$zza;->zzgz()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 150
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbt$zza;->zzha()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "new_audience"

    invoke-static {v6, v3, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_8
    const/16 v20, 0x2

    .line 151
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbt$zza;->zzgw()Lcom/google/android/gms/internal/measurement/zzbt$zzf;

    move-result-object v21

    const-string v22, "current_data"

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v23, v2

    move/from16 v2, v20

    move-object/from16 v3, v22

    move-object/from16 v24, v4

    move-object/from16 v4, v21

    move-object/from16 v20, v7

    move-object v7, v5

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbt$zzf;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 152
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbt$zza;->zzgy()Lcom/google/android/gms/internal/measurement/zzbt$zzf;

    move-result-object v4

    const-string v3, "previous_data"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbt$zzf;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 153
    invoke-static {v6, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    .line 154
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_9
    move/from16 v19, v1

    move/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v20, v7

    const/4 v0, 0x2

    move-object v7, v5

    :goto_7
    add-int/lit8 v1, v19, 0x1

    move-object v5, v7

    move-object/from16 v7, v20

    move/from16 v2, v23

    move-object/from16 v4, v24

    const/4 v3, 0x2

    goto :goto_5

    :cond_a
    move-object/from16 v24, v4

    move-object/from16 v20, v7

    const/4 v0, 0x2

    move-object v7, v5

    .line 156
    iget-object v1, v12, Lcom/google/android/gms/internal/measurement/zzch;->zzxo:[Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v1, :cond_10

    .line 159
    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_10

    aget-object v4, v1, v3

    if-eqz v4, :cond_f

    .line 161
    invoke-static {v6, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v5, "event {\n"

    .line 162
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzaa()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    iget-object v10, v4, Lcom/google/android/gms/internal/measurement/zzcf;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/zzas;->zzal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v10, v24

    invoke-static {v6, v0, v10, v5}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 164
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzcf;->zzxj:Ljava/lang/Long;

    const-string v12, "timestamp_millis"

    invoke-static {v6, v0, v12, v5}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 165
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzcf;->zzxk:Ljava/lang/Long;

    const-string v12, "previous_timestamp_millis"

    invoke-static {v6, v0, v12, v5}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 166
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzcf;->count:Ljava/lang/Integer;

    const-string v12, "count"

    invoke-static {v6, v0, v12, v5}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 167
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzcf;->zzxi:[Lcom/google/android/gms/internal/measurement/zzbt$zzd;

    if-eqz v4, :cond_e

    .line 170
    array-length v5, v4

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v5, :cond_e

    aget-object v13, v4, v12

    if-eqz v13, :cond_d

    const/4 v0, 0x3

    .line 172
    invoke-static {v6, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "param {\n"

    .line 173
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzaa()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    move-object/from16 v19, v1

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbt$zzd;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v6, v1, v10, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbt$zzd;->zzhl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v1, v7, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbt$zzd;->zzhn()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbt$zzd;->zzho()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_a

    :cond_b
    move-object/from16 v0, v16

    :goto_a
    invoke-static {v6, v1, v15, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbt$zzd;->zzhq()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbt$zzd;->zzhr()D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_b

    :cond_c
    move-object/from16 v0, v16

    .line 179
    :goto_b
    invoke-static {v6, v1, v14, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 180
    invoke-static {v6, v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    .line 181
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_d
    move-object/from16 v19, v1

    :goto_c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v19

    const/4 v0, 0x2

    goto :goto_9

    :cond_e
    move-object/from16 v19, v1

    .line 183
    invoke-static {v6, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    .line 184
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_f
    move-object/from16 v19, v1

    move-object/from16 v10, v24

    :goto_d
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v24, v10

    move-object/from16 v1, v19

    goto/16 :goto_8

    :cond_10
    const/4 v0, 0x1

    .line 186
    invoke-static {v6, v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/StringBuilder;I)V

    .line 187
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_11
    move-object/from16 v20, v7

    :goto_e
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v20

    goto/16 :goto_0

    .line 189
    :cond_12
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzb(JJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long v2, p3, v0

    if-lez v2, :cond_1

    .line 372
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzz()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final zzb([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 383
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 384
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 386
    :goto_0
    invoke-virtual {p1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 388
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 391
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 392
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 394
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzad()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzda()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    const-string v1, "Failed to ungzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method final zzc([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 397
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 398
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 399
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 400
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 401
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 403
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzad()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzda()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    const-string v1, "Failed to gzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    throw p1
.end method

.method public final bridge synthetic zzdm()Lcom/google/android/gms/measurement/internal/zzfz;
    .locals 1

    .line 434
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzdm()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzdn()Lcom/google/android/gms/measurement/internal/zzo;
    .locals 1

    .line 435
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzdn()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzdo()Lcom/google/android/gms/measurement/internal/zzw;
    .locals 1

    .line 436
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzdo()Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzdp()Lcom/google/android/gms/measurement/internal/zzbs;
    .locals 1

    .line 437
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzdp()Lcom/google/android/gms/measurement/internal/zzbs;

    move-result-object v0

    return-object v0
.end method

.method final zze(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)Z
    .locals 0

    .line 344
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzch:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzcv:Ljava/lang/String;

    .line 347
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzag()Lcom/google/android/gms/measurement/internal/zzq;

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method final zzgj()[I
    .locals 7

    .line 405
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzkt:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzft;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzk(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 406
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 408
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 409
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzal;->zzhp:Lcom/google/android/gms/measurement/internal/zzal$zza;

    .line 410
    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzal$zza;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 411
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 412
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 413
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "measurement.id."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 414
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 416
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzad()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v4

    .line 419
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzau;->zzdd()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v4

    const-string v5, "Too many experiment IDs. Number of IDs"

    .line 420
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 424
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzad()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzau;->zzdd()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v5

    const-string v6, "Experiment ID NumberFormatException"

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 426
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    .line 428
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 430
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v3, v1, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Ljava/lang/Integer;

    add-int/lit8 v6, v4, 0x1

    .line 431
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v4

    move v4, v6

    goto :goto_2

    :cond_4
    return-object v0

    :cond_5
    :goto_3
    return-object v1
.end method

.method public final bridge synthetic zzn()V
    .locals 0

    .line 438
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzct;->zzn()V

    return-void
.end method

.method public final bridge synthetic zzo()V
    .locals 0

    .line 439
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzct;->zzo()V

    return-void
.end method

.method public final bridge synthetic zzp()V
    .locals 0

    .line 440
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzct;->zzp()V

    return-void
.end method

.method public final bridge synthetic zzq()V
    .locals 0

    .line 441
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzct;->zzq()V

    return-void
.end method

.method public final bridge synthetic zzy()Lcom/google/android/gms/measurement/internal/zzad;
    .locals 1

    .line 442
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzct;->zzy()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzz()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 443
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzct;->zzz()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method
