module OiApi

  module LookupTables

    CATEGORIES = {
      'Beauty & Fashion' => 1000,
      'Business' => 1001,
      'Entertainment' => 1002,
      'Food & Dining' => 1003,
      'Health & Fitness' => 1004,
      'Home & Family' => 1005,
      'Investing' => 1006,
      'Market Research' => 1007,
      'News & Education' => 1008,
      'Personal Finance' => 1009,
      'Retail & E-commerce' => 1010,
      'Social' => 1011,
      'Travel' => 1012,
    }

    DATA_POINTS = {
      FN:  { dynamic_field_value: '#{FN}',  description: 'First Name' },
      LN:  { dynamic_field_value: '#{LN}',  description: 'Last Name' },
      EM:  { dynamic_field_value: '#{EM}',  description: 'Email' },
      AD1: { dynamic_field_value: '#{AD1}', description: 'Street Address' },
      CI:  { dynamic_field_value: '#{CI}',  description: 'City' },
      ST:  { dynamic_field_value: '#{ST}',  description: 'State' },
      PO:  { dynamic_field_value: '#{PO}',  description: 'Postal Code' },
      CO:  { dynamic_field_value: '#{CO}',  description: 'Country' },
      HP:  { dynamic_field_value: '#{HP}',  description: 'Home Phone Number' },
      MP:  { dynamic_field_value: '#{MP}',  description: 'Mobile Phone Number' },
      G:   { dynamic_field_value: '#{G}',   description: 'Gender' },
      DOB: { dynamic_filed_value: '#{DOB}', description: 'Date of Birth' }
    }

    def category_names
      CATEGORIES.keys
    end

  end

end
