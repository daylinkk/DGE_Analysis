
#creating histograms to determine low count threshold
#gene_count_lowFilter <- gene_count_sums[gene_count_sums < 20]
#gene_count_lowFilter <- gene_count_sums[gene_count_sums < 15]
gene_count_lowFilter <- gene_count_sums[0 < gene_count_sums & gene_count_sums < 100]
hist(gene_count_lowFilter, ylim = c(0,15000), xlim = c(0,100), breaks=100)


#trying to find variance of gene data
data_with_sums_noFirstCol <- data_with_sums[, -1]
trans_data <- t(data_with_sums_noFirstCol)
var_data <- var(trans_data) #returns limit reached error
